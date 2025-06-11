# Terraform AWS VPC Module

This Terraform module provisions a fully functional **AWS Virtual Private Cloud (VPC)** architecture that includes:

- Custom VPC
- Public and private subnets (multi-AZ)
- Internet Gateway (IGW)
- NAT Gateway (1 per VPC)
- Route Tables and their associations
- Optionally tagged with a cluster name (for ECS, EKS, etc.)

---

---

## 🔧 Usage Example

```hcl
module "vpc" {
  source = "git::https://github.com/your-username/vpc-module.git"

  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  private_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
  cluster_name         = "project-ecommerce"
}

