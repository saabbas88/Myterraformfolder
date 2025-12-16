terraform {
  backend "s3" {
    bucket = "my-artifact-bkttt"
    key = "terraform.tfstate"
    region = "ap-south-1"
    
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "terraform-state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}