
terraform {
  backend "s3" {
    bucket = "mycutebucket001"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}