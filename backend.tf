# requires both the bucket and table to have been created.
# additionally the table needs to have a partition key of LockID.
terraform {
  backend "s3" {
    bucket         = "terraform-s3-bucket-jfisc"
    key            = "terraform-state-dir/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-table"
  }
}