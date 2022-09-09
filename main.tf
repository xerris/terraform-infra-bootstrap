locals{
  tags = {
    Terraform   = "true"
    Environment = var.env
    Owner       = "Anubhav"
    Project     = "test"
  }
}

module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = "${var.env}-${var.ecr_name}"
    tags = local.tags
}

module "ecr_cleanup" {
  source = "git@github.com:xerris/aws-modules.git//ecr/ecrCleaner"
  env = var.env
  region = var.region
  images_to_keep = var.images_to_keep
}