# Terraform-infra-bootstrap

## Introduction
This repository quickly spins up the necessary resources to create applications by creating an ECS (Elastic Container Service) cluster, Dynamodb table, SQS module and API Gateway.

## Prerequisites 
Terraform version 0.15.1
The  .terraform-version or version.tf works with tfenv . It will install if needed and switch to the Terrraform version specified.
# version.tf 
```
terraform {
  required_version = ">= 0.15"
}
```
# .terraform-version
```
terraform {
  required_version = ">= 0.15"
}
```


## Environment Variables

Environment variables needed to execute this deployment.

| Name | Value | Description |
|------|---------|--------|
|AWS_ACCESS_KEY_ID| n/a | n/a |
|AWS_SECRET_ACCESS_KEY| n/a | n/a |
|AWS_REGION | ca-central-1| n/a |
|ENV | \<env\>| n/a |

## Deploy Requirements 

| Name | Version/Value |
|------|---------|
| Terraform | 1.0 |
| awscli | aws-cli/1.19.76 |

## Backend Requirements 
* Create Backend Bucket
* [Create Backend Dynamo Table](https://www.terraform.io/docs/language/settings/backends/s3.html#dynamodb-state-locking)


| Name | Version |
|------|---------|
| Bucket name | project-terraform-state-\<ENV\>|
| Table name | \<ENV\>-project-terraform-state-lock-dynamo |
| Key | LockID \(string\) |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |



## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dynamodb_table"></a> [dynamodb\_table](#module\_dynamodb\_table) | git@github.com:xerris/aws-modules.git//dynamodb | n/a |
| <a name="module_ecr_cleanup"></a> [ecr\_cleanup](#module\_ecr\_cleanup) | git@github.com:xerris/aws-modules.git//ecr/ecrCleaner | n/a |
| <a name="module_ecr_module"></a> [ecr\_module](#module\_ecr\_module) | git@github.com:xerris/aws-modules.git//ecr | n/a |
| <a name="module_sqs_module"></a> [sqs\_module](#module\_sqs\_module) | git@github.com:xerris/aws-modules.git//sqs | n/a |
| <a name="module_test_bucket"></a> [test\_bucket](#module\_test\_bucket) | git@github.com:xerris/aws-modules.git//s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_api.main_apigw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api) | resource |
| [aws_kms_key.aws_s3_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/kms_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | n/a | `string` | `"1212121212"` | no |
| <a name="input_dynamodb_table_name"></a> [dynamodb\_table\_name](#input\_dynamodb\_table\_name) | n/a | `string` | `"pets-table"` | no |
| <a name="input_ecr_name"></a> [ecr\_name](#input\_ecr\_name) | n/a | `string` | `"isengardecr"` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"poc"` | no |
| <a name="input_images_to_keep"></a> [images\_to\_keep](#input\_images\_to\_keep) | n/a | `number` | `15` | no |
| <a name="input_main_apigw_name"></a> [main\_apigw\_name](#input\_main\_apigw\_name) | n/a | `string` | `"poc"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecr_name"></a> [ecr\_name](#output\_ecr\_name) | n/a |
| <a name="output_ecr_registry_id"></a> [ecr\_registry\_id](#output\_ecr\_registry\_id) | n/a |
| <a name="output_main_apigw_id"></a> [main\_apigw\_id](#output\_main\_apigw\_id) | n/a |
 
## Execution Steps

* Initialize the Environment Variables

```
export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXXXXXXXXXXXX"
export AWS_SECRET_ACCESS_KEY="YYYYYYYYYYYYYYYYYYYYYYYYY"
export AWS_REGION=ca-central-1
```

The `terraform_exec.sh` script receives one parameter that indicates the action to be executed.

```
0 = Executes a terraform plan
1 = Executes a terraform apply
2 = Executes a terraform destroy
```


* Execute a Terraform Plan on the project folder

```
terraform_exec.sh 0
```

* Execute a Terraform apply on the project folder

```
terraform_exec.sh 1
```

* Execute a Terraform Destroy on the project folder

```
terraform_exec.sh 2
```
