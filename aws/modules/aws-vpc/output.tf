output "vpc_id" {
    description = "VPC identifier"
    value       = module.vpc.vpc_id
}

output "private_subnet_0" {
    description = "Subnet identifier"
    value       = module.vpc.private_subnets[0]
}

output "private_subnet_1" {
    description = "Subnet identifier"
    value       = module.vpc.private_subnets[1]
}

output "private_subnet_2" {
    description = "Subnet identifier"
    value       = module.vpc.private_subnets[2]
}
