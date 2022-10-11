variable "region" {
  description = "Region name"
  type        = string
  default     = "us-east-2"
}

variable "profile" {
  description = "Profile name"
  type        = string
  default     = "terraform-user"
}

# Variables for vpc
variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "aws-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "vpc_azs" {
  description = "Availability Zones for VPC"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

// jump-server public subnet
variable "jump_public_subnets" {
  description = "Public Subnets for jump-server"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}

// app-server private subnet
variable "app_private_subnets" {
  description = "Private Subnets for app-server"
  type        = list(string)
  default     = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]
}

// db-server private subnet
variable "db_private_subnets" {
  description = "private Subnets for db-server"
  type        = list(string)
  default     = ["10.10.7.0/24", "10.10.8.0/24", "10.10.9.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    env        = "dev"
    created-by = "terraform"
  } 
}