# EKS module stub — sufficient for tofu validate.

terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

locals {
  cluster_full_name = "${var.env}-${var.cluster_name}"
}

output "cluster_name" { value = local.cluster_full_name }
output "cluster_endpoint" { value = "https://stub.example.com" }
variable "env"            { type = string }
variable "cluster_name"   { type = string }
variable "cluster_version" { type = string; default = "1.30" }
variable "vpc_id"         { type = string }
variable "subnet_ids"     { type = list(string) }
variable "node_groups"    { type = any; default = {} }
variable "tags"           { type = map(string); default = {} }
