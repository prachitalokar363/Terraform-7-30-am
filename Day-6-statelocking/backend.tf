terraform {
  backend "s3" {
    bucket = "nareshit-prachi"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}