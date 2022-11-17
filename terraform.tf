terraform {
  backend "s3" {
    bucket = "project-terraform-state-dev-allen"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

  #assume_role {
  #  role_arn     = "arn:aws:iam::${var.account_id}:role/deployment-role"
  #  session_name = "${var.env}-session"
  #}
}
