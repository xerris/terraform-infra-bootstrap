terraform {
  backend "s3" {}
}

#assume_role {
#  role_arn     = "arn:aws:iam::${var.account_id}:role/deployment-role"
#  session_name = "${var.env}-session"
#}

