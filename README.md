Aim for this Terraform project:

1.Secure website hosted at https://www.yordanovsstoyan.com/ with a valid SSL certificate
2.Requests to the insecure website http://www.yordanovsstoyan.com/ are redirected to https://www.yordanovsstoyan.com/
3.Requests without the www subdomain (https://yordanovsstoyan.com/) are redirected to https://www.yordanovsstoyan.com/



S3 Static Website Infrastructure

1.S3 bucket that hosts our website files for our www subdomain
2.S3 bucket that serves as the redirect to our www subdomain 
3.SSL wildcard certificate validated for our domain that automatically renews.
4.Cloudfront distribution for the www and non-www domain which is our CDN.
5.Route 53 records pointed at to our Cloudfront distributions.
