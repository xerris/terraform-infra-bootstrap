
variable "region" {
  default = "us-east-1"
}

variable "ecr_name" {
  default = "infra-service-ecr-allen"
}

variable "dynamodb_table_name" {
  default = "xyz"
}

variable "env" {
  default = "dev-allen"
}

variable "main_apigw_name" {
  default = "dev-allen"
}

variable "account_id" {
  default = "1212121212"
}

variable "images_to_keep" {
  default = 15
}

variable "tags" {
  default = {}
}
