terraform {
  backend "s3" {}
}

provider "aws" {
  region  = var.region
  #assume_role {
  #  role_arn     = "arn:aws:iam::${var.account_id}:role/deployment-role"
  #  session_name = "${var.env}-session"
  #}
}