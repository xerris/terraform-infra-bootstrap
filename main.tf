module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = var.ecr_name

  tags = {
    env_tag = var.ecr_name
    ecr_name = "${var.env}-${var.ecr_name}"

  tags = {
    Terraform   = "true"
    Environment = var.env
    Owner       = var.owner_tag
    Project     = var.project
    map-migrated = "d-server-00ny2jr2wsulpg"
  }
}

module "ecr_cleanup" {
  source = "git@github.com:xerris/aws-modules.git//ecr/ecrCleaner"
  env = var.env
  region = var.region
  images_to_keep = var.images_to_keep
}