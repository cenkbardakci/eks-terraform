
locals {
  subnets = [
    { cidr_block = "10.0.1.0/24", availability_zone = element(data.aws_availability_zones.available.names, 0) },
    { cidr_block = "10.0.2.0/24", availability_zone = element(data.aws_availability_zones.available.names, 1) },
  ]
}

data "aws_availability_zones" "available" {}

data "aws_eks_cluster" "cluster" {
    name = "eks-workshop"
    provider = aws.eks
}

data "aws_eks_cluster_auth" "cluster_auth" {
    name = data.aws_eks_cluster.cluster.name
    provider = aws.eks
}