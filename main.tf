module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = var.ecr_name
}

