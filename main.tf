module "ecr_module"{
    source = "git@github.com:xerris/aws-modules.git//ecr"
    ecr_name = "${var.env}-${var.ecr_name}"
}

