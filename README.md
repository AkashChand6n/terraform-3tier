# Terraform 3-Tier Architecture with Workspaces

This project creates:
- A VPC for `dev` and `prod` environments
- An IAM role for EC2 instances with SSM and S3 read-only access

## Usage

```bash
terraform init
terraform workspace new dev
terraform apply -var-file="terraform.tfvars"

terraform workspace new prod
terraform apply -var-file="terraform.tfvars"
