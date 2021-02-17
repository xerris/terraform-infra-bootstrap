module "dynamodb_table" {
  source = "git@bitbucket.org:xerris/platform-modules.git//dynamodb"

  name      = var.dynamodb_table_name
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
    Environment = "isengard"
  }
}