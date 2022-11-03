module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = var.ecr_name

  tags = {
    env_tag = var.ecr_name
  }
}

module "ecr_cleanup" {
  source = "git@github.com:xerris/aws-modules.git//ecr/ecrCleaner"
  env = var.env
  region = var.region
  images_to_keep = var.images_to_keep
}