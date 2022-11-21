terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
terraform {
  backend "s3" {
    encrypt = true
    bucket = "dev-ginu-s3-bucket"
    key = "alias/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "ginu-table"
  }
}  



provider "aws" {
  region  = "${var.region}"
  #profile = "default"
  shared_credentials_files = ["~/.aws/credentials"]
  #assume_role {
  #  role_arn     = "arn:aws:iam::${var.account_id}:role/deployment-role"
  #  session_name = "${var.env}-session"
  #}
}