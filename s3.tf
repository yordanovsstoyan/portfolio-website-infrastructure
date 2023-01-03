

resource "aws_s3_bucket" "web-bucket" {
  bucket = "www.${var.domain_name}"
  acl    = "public-read"
  
  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://www.www.${var.domain_name}"]
    max_age_seconds = 3000
  }

  website {
    index_document = "index.html"
    
  }



  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "redirect-bucket" {
  bucket = "${var.domain_name}"
  acl    = "public-read"
  

  website {
    redirect_all_requests_to = "https://www.${var.domain_name}"
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  


}