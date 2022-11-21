module "dynamodb_table" {
  source = "git@github.com:xerris/aws-modules.git//dynamodb"

  name      = "${var.env}-${var.dynamodb_table_name}"
  hash_key  = "id"
  range_key = "title"

  attributes = [
    {
      name = "id"
      type = "N"
    },
    {
      name = "title"
      type = "S"
    },
    {
      name = "age"
      type = "N"
    }
  ]

  global_secondary_indexes = [
    {
      name               = "TitleIndex"
      hash_key           = "title"
      range_key          = "age"
      projection_type    = "INCLUDE"
      non_key_attributes = ["id"]
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "dynamo"
  }
}