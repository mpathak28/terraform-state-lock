terraform {
    backend "s3" {
        bucket = "manishpathak.tk"  #bucket name
        key    = "terraform/terraform.tfstate"       #this is the actual folder inside your bucket
        region = "us-east-1"        #region name
        dynamodb_table = "terraform-backend-state-lock"
    }
}
provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my-instance" {
 ami              = "ami-09e67e426f25ce0d7"
 instance_type    = "t2.micro"    
}