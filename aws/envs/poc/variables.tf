# variable "account_vpc_cidr" {
#     type = string
#     description = "The IP address CIDR for the mananged VPC"
#     default = "10.0.24.0/21"
# }

# variable "kubernetes_cidr" {
#     type = string
#     description = "The IP address CIDR for the kubernetes nodes"
#     default = "10.1.24.0/21"
# }

variable "region" {
    type = string
    description = "AWS Region"
    default = "eu-west-2"
}

variable "account_name" {
    type = string
    default = "POC"
}

variable "account_id" {
  description = "The AWS account id. Utilized by the kubernetes provider"
  type        = string
}
