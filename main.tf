module "ecr_module"{
    source = "git@bitbucket.org:xerris/platform-modules.git//ecr"
    ecr_name = var.ecr_name
}

