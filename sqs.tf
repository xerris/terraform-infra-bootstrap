module "sqs_module" {
  source = "git@github.com:xerris/aws-modules.git//sqs"
  create = true
  name = "${var.env}-sqs-ginu"
  tags = {
    Secure = "false"
    Terraform   = "true"
    Environment = var.env
  }
}
