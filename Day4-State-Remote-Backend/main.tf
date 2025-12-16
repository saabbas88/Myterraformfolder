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
  bucket = "my-artifact-bkt9999"
}

#Note: when multiple developer work on the same terraform state fiele (terraform.tf)
#Merge conflict in terraform.tfstate
#if a developer run terraform  plan on outdate state file and another applies changes, the state will be out of  sync.
  
#Solution is below
# need to implement state locking provision by using DynanmoDB process.

