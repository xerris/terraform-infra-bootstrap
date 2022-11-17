region              = "us-east-1"
env                 = "dev"
ecr_name            = "isengard-xerris-ecr"
dynamodb_table_name = "Allen-state-lock-table"
images_to_keep      = 15
main_apigw_name     = "Allen-apigw"
tags = {
  Project_Owner = "Allen"
  Project       = "infra-bootstrap-project-Allen"
}
