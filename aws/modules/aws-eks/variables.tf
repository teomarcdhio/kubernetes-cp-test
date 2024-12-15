# EKS Cluster Input Variables
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes minor version to use for the EKS cluster (for example 1.21)"
  type        = string
  default     = "1.30"
}

variable "vpc_id" {
  description = "The VPC ID that the kubernetes cluster will be deployed within"
  type        = string
}

variable "private_subnet_0" {
  description = "The first public subnet"
  type = string
}

variable "private_subnet_1" {
  description = "The first public subnet"
  type = string
}

variable "private_subnet_2" {
  description = "The first public subnet"
  type = string
}

variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "scaling_desired" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "scaling_min" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "scaling_max" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "instance_type" {
  description = "The instance type used for the primary node groups (1,2)"
  type        = string
  default     = "t3.small"
}

variable "secondary_instance_type" {
  description = "The instance type used for the secondary node groups (3,4)"
  type        = string
  default     = "t4.small"
}

variable "account_id" {
  description = "The AWS account id. Utilized by the kubernetes provider"
  type        = string
}

