# terraform-prerequisites

These are scripts that need be run before actually using terraform.
They will create:
- S3 bucket
- DynamoDB Table

Which can be later on used for keeping terraform state.

Bear in mind - there scripts are not a part of actual CI/CD - they are pre-requisites for using terraform.

## Preparing new environment

Make sure You have AWS CLI configured and proper profiles created. Let's assume Your profile will be `private-dev`

```shell
rm -rf .terraform .terraform.lock.hcl
AWS_PROFILE=private-dev terraform init
AWS_PROFILE=private-dev terraform apply -var="environment_stage=dev" -var="project_name=yourawesomeproject"
```

You get the gist - use proper AWS account and pass proper variable to apply command.

It is important to remove the Terraform state before running command, as it is local and You will use it for multiple accounts, so otherwise they would interfere with each other.
