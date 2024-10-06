variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  default     = "gcpautovpcnetwork"  # Default VPC network name
}

variable "subnet_name" {
  description = "The name of the subnet to create"
  type        = string
  default     = "gcpautosubnet"  # Default subnet name
}

variable "subnet_cidr" {
  description = "The IP CIDR range for the subnet"
  type        = string
  default     = "10.0.0.0/24"  # Default CIDR range for the subnet
}

variable "region" {
  description = "The region where the subnet will be created"
  type        = string
  default     = "us-central1"  # Default region
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}
