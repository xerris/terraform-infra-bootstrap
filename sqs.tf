module "sqs_module" {
  source = "git@github.com:xerris/aws-modules.git//sqs"
  create = true
  name = "${var.env}-${var.sqs_name}"
  tags = {
    Secure = "false"
    Terraform   = "true"
    Environment = var.env
  }
}
