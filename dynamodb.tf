resource "aws_dynamodb_table" "terraform-lock" {
  name         = "${var.project_name}-${var.environment_stage}-terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "Name" = "DynamoDB Terraform State Lock Table for ${var.project_name}-${var.environment_stage}"
  }
}
