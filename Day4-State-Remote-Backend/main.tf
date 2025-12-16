resource "aws_instance" "name" {
instance_type = "t3.micro"
ami = "ami-00ca570c1b6d79f36"
key_name = "Mumkey"
availability_zone = "ap-south-1a"
tags = {
    Name = "dev"
}

}

resource "aws_s3_bucket" "name" {
  bucket = "my-artifact-bkttt"
}