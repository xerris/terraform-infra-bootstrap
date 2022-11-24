module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = "${var.env}-${var.ecr_name}"
    tags = {
    Terraform   = "true"
    Environment = var.env
    Owner       = var.owner_tag
    }
    #image_tag_mutability = "IMMUTABLE"
}

module "ecr_cleanup" {
  source = "git@github.com:xerris/aws-modules.git//ecr/ecrCleaner"
  env = var.env
  region = var.region
  images_to_keep = var.images_to_keep
  
}