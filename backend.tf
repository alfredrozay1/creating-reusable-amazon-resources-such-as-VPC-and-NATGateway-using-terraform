# Store the Terraform State File in S3 and Lock with DynamoDB
terraform {
  backend "s3" {
    bucket         = "alfredrozay-terraform-tfstate"
    key            = "alfredrozay-terraform-tfstate/aws-vpc/terraform.tfstate"
    region         = "us-east-1"
    profile        = "terraform-user"
    dynamodb_table = "terraform-locks"
  }
}