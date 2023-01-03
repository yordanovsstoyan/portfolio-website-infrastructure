resource "aws_route53_zone" "main" {
  name = var.domain_name
  
}

resource "aws_route53_record" "redirect-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.redirect_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.redirect_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www-a" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.web_s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.web_s3_distribution.hosted_zone_id
    evaluate_target_health = false
  }
}