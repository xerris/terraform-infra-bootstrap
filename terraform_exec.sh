#!/bin/bash

echo "###############################"
echo "## Starting Terraform script ##"
echo "###############################"

#If var true apply  will be exec
APPLY=$1

terraform init \
-backend-config="bucket=terraform-state-aldo-${ENV}" \
-backend-config="key=${ENV}/platform-infra-aldo.tfstate" \
-backend-config="region=${AWS_REGION}"
#\ -backend-config="role_arn=arn:aws:iam::${ACCOUNT_ID}:role/aldo-jenkins" \
#-backend-config="session_name=${ENV}-omni-dataapps"

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
