provider "aws" {
    alias  = "eks"
    region = "us-west-2"
}

provider "kubernetes" {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster_auth.token
}

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 3.0"
        }
    }
}



