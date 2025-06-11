# 📦 Terraform AWS EKS Module

This Terraform module creates an **Amazon EKS Cluster** with configurable managed node groups, IAM roles, and networking support.

---

## 🚀 Features

- Creates EKS Cluster with specified Kubernetes version
- Creates EKS-managed Node Groups with autoscaling support
- Configurable instance types and capacity type (on-demand/spot)
- IAM roles for control plane and nodes with recommended policies
- Supports custom VPC subnets (public/private)
- Fully taggable and reusable

---


---

## ✅ Usage

```hcl
module "eks" {
  source = "./modules/eks"  # adjust path or Git source

  cluster_name     = "dev-eks-cluster"
  cluster_version  = "1.29"
  vpc_id           = "vpc-0123456789abcdef0"
  subnet_ids       = ["subnet-aaa", "subnet-bbb", "subnet-ccc"]

  node_groups = {
    dev-nodes = {
      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
      scaling_config = {
        desired_size = 2
        max_size     = 3
        min_size     = 1
      }
    }
  }

  environment  = "development"
  project_name = "project-ecommerce"
}


