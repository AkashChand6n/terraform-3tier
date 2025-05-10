vpc_name  = "3tire-terraform"
role_name = "ec2_ssm_s3_role"

vpc_cidrs = {
  dev  = "10.0.0.0/16"
  prod = "10.2.0.0/16"
}
