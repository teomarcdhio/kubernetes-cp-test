# Create the VPC and Subnets
module "poc_vpc" {
  source = "../../modules/aws-vpc"
  cluster_name = "poc-eks"
}
# Create the EKS cluster and depdencies such as Ingress controller
module "poc_eks" {
  source = "../../modules/aws-eks"
  vpc_id = module.poc_vpc.vpc_id
  cluster_name = "poc-eks"
  cluster_version = "1.30"
  private_subnet_0 = module.poc_vpc.private_subnet_0
  private_subnet_1 = module.poc_vpc.private_subnet_1
  private_subnet_2 = module.poc_vpc.private_subnet_2
  account_id = var.account_id
}