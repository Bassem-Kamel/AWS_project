terraform {
  backend "s3" {
    bucket         = "bassem-terra-backend"
    key            = "terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-lock"
  }
}
