
variable "region" {
  default = "us-east-1"
}

variable "ecr_name" {
  default = "isengardecr"
}

variable "dynamodb_table_name"{
  default = "pets-table"
}

variable "env"{
  default = "poc"
}

variable "main_apigw_name"{
  default = "poc"
}

variable "account_id" {
  default = "1212121212"
}

variable "images_to_keep" {
  default= 15
}