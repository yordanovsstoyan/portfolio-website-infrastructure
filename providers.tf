provider "aws" {
  region = "eu-west-2"
  access_key = "access-key" 
  secret_key = "secret-key"
  
}
#usually its not a good idea to hard code keys :)

provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}