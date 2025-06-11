variable "cluster_name" {
    type        = string
    description = "Name of the EKS cluster"
}

variable "cluster_version" {
    type        = string
    description = "Kubernetes version for the EKS cluster"
}

variable "vpc_id" {
  description = "ID of the VPC where the EKS cluster will be created"
  type        = string
  
}
variable "subnet_ids" {
    type        = list(string)
    description = "List of subnet IDs for the EKS cluster"
}

variable "node_groups" {
    type = map(object({
        instance_types  = list(string)
        capacity_type  = string
        scaling_config = object({
            desired_size = number
            max_size     = number
            min_size     = number
        })
    }))
    description = "Configuration for EKS node groups"
}
