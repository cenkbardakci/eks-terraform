provider "aws" {
    alias  = "eks"
    region = "us-east-1"
}


provider "kubernetes" {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster_auth.token
}


provider "aws" {
    alias  = "s3"
    region = "us-east-1"
}

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 3.0"
        }
    }
}



