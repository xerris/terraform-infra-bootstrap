
variable "region" {
  default = "us-east-1"
}

variable "ecr_name" {
  default = "ginu-ecr"
}

/*variable "tags" {
  default= "ginu"
  #type   = map(string)
}*/

variable "dynamodb_table_name"{
  default = "ginu-table1"
}

variable "env"{
  default = "dev-ginu"
}

variable "main_apigw_name"{
  default = "dev-ginu"
}

variable "account_id" {
  default = "370365354210"
}

variable "images_to_keep" {
  default= 15
}

variable "tags_S3"{
  default= "dev-ginu-s3-bucket"
  
}

