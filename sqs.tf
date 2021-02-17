module "sqs_module" {
  source = "git@bitbucket.org:xerris/platform-modules.git//sqs"
  create = true
  name = "${var.env}-test-sqs"
  tags = {
    Secure = "false"
    Terraform   = "true"
    Environment = var.env
  }
}
