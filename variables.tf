variable "vpc_name" {
  type        = string
  description = "Base name for the VPC"
}

variable "vpc_cidrs" {
  type        = map(string)
  description = "Map of workspace names to VPC CIDRs"
}

variable "role_name" {
  type        = string
  description = "IAM role name for EC2 instance"
}

variable "subnets" {
  type = map(map(object({
    cidr = string
    az   = string
  })))
  description = "Map of subnet configurations per workspace"
}
