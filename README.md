Aim for this Terraform project: <br />

1.Secure website hosted at https://www.yordanovsstoyan.com/ with a valid SSL certificate  <br />
2.Requests to the insecure website http://www.yordanovsstoyan.com/ are redirected to https://www.yordanovsstoyan.com/  <br />
3.Requests without the www subdomain (https://yordanovsstoyan.com/) are redirected to https://www.yordanovsstoyan.com/  <br />



S3 Static Website Infrastructure <br />

1.S3 bucket that hosts our website files for our www subdomain <br />
2.S3 bucket that serves as the redirect to our www subdomain  <br />
3.SSL wildcard certificate validated for our domain that automatically renews. <br />
4.Cloudfront distribution for the www and non-www domain which is our CDN. <br />
5.Route 53 records pointed at to our Cloudfront distributions. <br />
