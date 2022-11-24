
variable "region" {
  default = "us-east-1"
}

variable "ecr_name" {
  default = "dev-ginu-ecr"
}

/*variable "tags" {
  default= "ginu"
  #type   = map(string)
}*/

variable "dynamodb_table_name"{
  default = "dev-ginu-ginu-table1"
}

variable "env"{
  default = "dev"
}

variable "main_apigw_name"{
  default = "dev"
}

variable "account_id" {
  default = "370365354210"
}

variable "images_to_keep" {
  default= 15
}

/*variable "tags_S3"{
  default= "ginu-s3-bucket"
  
}*/

variable "bucket_name" {
 default = "ginu-s3-bucket"
}

variable "sqs_name" {
  default = "sqs-ginu"
}

variable "owner_tag"{
  default = "Ginu"
}
