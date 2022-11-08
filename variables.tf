
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

variable "owner_tag" {
  default = "nithin"
}

variable "project" {
  default = "xerris-101"
}

variable "bucket_name" {
  default = "test-bucket-xerris-nithin"
}

variable "sqs_name" {
  default = "test-sqs"
}

variable "dynamodb_table_name" {
  default = "dynamodb_table_nithin"
}