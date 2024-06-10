terraform {
    backend "s3" {
        bucket         = "back-end-state-tf"
        key            = "terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-state-lock-dynamodb"
        encrypt        = true
    }
}