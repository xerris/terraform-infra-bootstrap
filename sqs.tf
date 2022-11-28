module "sqs_module" {
  source = "git@github.com:xerris/aws-modules.git//sqs"
  create = true
  name   = "${var.env}-test-sqs-allen"
  tags = merge({
    Secure      = "false"
    Terraform   = "true"
    Environment = var.env
  }, var.tags)
}
