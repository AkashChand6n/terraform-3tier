vpc_name  = "3tire-terraform"
role_name = "ec2_ssm_s3_role"

vpc_cidrs = {
  dev  = "10.0.0.0/16"
  prod = "10.2.0.0/16"
}

subnets = {
  dev = {
    "Public-Web-Subnet-AZ-1"  = { cidr = "10.0.1.0/24", az = "us-east-1a" }
    "Private-App-Subnet-AZ-1" = { cidr = "10.0.2.0/24", az = "us-east-1b" }
    "Private-DB-Subnet-AZ-1"  = { cidr = "10.0.3.0/24", az = "us-east-1c" }

    "Public-Web-Subnet-AZ-2"  = { cidr = "10.0.4.0/24", az = "us-east-1a" }
    "Private-App-Subnet-AZ-2" = { cidr = "10.0.5.0/24", az = "us-east-1b" }
    "Private-DB-Subnet-AZ-2"  = { cidr = "10.0.6.0/24", az = "us-east-1c" }
  }

  prod = {
    "Public-Web-Subnet-AZ-1"  = { cidr = "10.2.1.0/24", az = "us-east-1a" }
    "Private-App-Subnet-AZ-1" = { cidr = "10.2.2.0/24", az = "us-east-1b" }
    "Private-DB-Subnet-AZ-1"  = { cidr = "10.2.3.0/24", az = "us-east-1c" }

    "Public-Web-Subnet-AZ-2"  = { cidr = "10.2.4.0/24", az = "us-east-1a" }
    "Private-App-Subnet-AZ-2" = { cidr = "10.2.5.0/24", az = "us-east-1b" }
    "Private-DB-Subnet-AZ-2"  = { cidr = "10.2.6.0/24", az = "us-east-1c" }
  }
}