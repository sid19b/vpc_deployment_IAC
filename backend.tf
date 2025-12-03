terraform {
  backend "s3" {
    bucket         = "scn-terraform-state-dev"
    key            = "vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
