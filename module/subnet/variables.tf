variable "vpc_id" {
  type        = string
  description = "VPC ID to attach subnets to"
}

variable "subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
  description = "Subnet configurations for the current workspace"
}
