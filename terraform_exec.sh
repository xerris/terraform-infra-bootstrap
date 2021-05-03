#!/bin/bash

echo "###############################"
echo "## Starting Terraform script ##"
echo "###############################"

#If var true apply  will be exec
APPLY=$1
echo "${ENV}"
echo "${AWS_REGION}"
terraform init \
-backend-config="bucket=terraform-state-${ENV}" \
-backend-config="key=${ENV}/platform-infra.tfstate" \
-backend-config="dynamodb_table=${ENV}-terraform-state-lock-dynamo"
-backend-config="region=${AWS_REGION}"
#\ -backend-config="role_arn=arn:aws:iam::${ACCOUNT_ID}:role/deployment-role" \
#-backend-config="session_name=${ENV}-session"

terraform validate
terraform plan -var-file=envs/${ENV}.tfvars
#\ -var="account_id=${ACCOUNT_ID}"

if [ $APPLY == 1 ]; then
    echo "###############################"
    echo "## Executing terraform apply ##"
    echo "###############################"
    terraform apply --auto-approve -var-file=envs/${ENV}.tfvars
    # -var="account_id=${ACCOUNT_ID}"
fi
