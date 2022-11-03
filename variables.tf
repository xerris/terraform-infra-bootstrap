
variable "region" {
  default = "us-east-1"
}

variable "ecr_name" {
  default = "isengardecr"
}

variable "dev-project-terraform-state-lock-dynamo"{
  default = "pets-table-1"
}

variable "env"{
  default = "dev"
}

variable "main_apigw_name"{
  default = "dev"
}

variable "account_id" {
  default = "1212121212"
}

variable "images_to_keep" {
  default= 15
}