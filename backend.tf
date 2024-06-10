terraform {
    backend "s3" {
        bucket         = "your-s3-bucket-name"
        key            = "your-state-file-key"
        region         = "your-aws-region"
        dynamodb_table = "your-dynamodb-table-name"
        encrypt        = true
    }
}