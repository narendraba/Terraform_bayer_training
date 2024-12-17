terraform {
  backend "s3" {
    bucket         = "bayer-terraform-practice"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "my-terraform-lock-table"  # Optional, for state locking
  }
}
