#!/bin/bash

echo "###############################"
echo "## Starting Terraform script ##"
echo "###############################"

#If var true apply  will be exec
#Environment variables needed to execute this deployment.
export "${AWS_ACCESS_KEY_ID}"
export "${AWS_SECRET_ACCESS_KEY}"
export "${AWS_SESSION_TOKEN}"

APPLY=$1
echo "${ENV}"
echo "${AWS_REGION}"
terraform init \
-backend-config="bucket=test-bucket-nithin-${ENV}" \
-backend-config="key=${ENV}/platform-infra.tfstate" \
-backend-config="dynamodb_table=${ENV}-nithin-test-dynamodb" \
-backend-config="region=${AWS_REGION}"
#\ -backend-config="role_arn=arn:aws:iam::${ACCOUNT_ID}:role/deployment-role" \
#-backend-config="session_name=${ENV}-session"

terraform validate
terraform init
terraform plan -var-file=envs/dev.tfvars
#\ -var="account_id=${ACCOUNT_ID}"

if [ $APPLY == 1 ]; then
    echo "###############################"
    echo "## Executing terraform apply ##"
    echo "###############################"
    terraform apply --auto-approve -var-file=envs/dev.tfvars
    # -var="account_id=${ACCOUNT_ID}"
fi
