variable "network_name" {
  description = "The name of the VPC network"
  type        = string
 default = "gcpautoexamplevpc09"
}

variable "subnet_name" {
  description = "The name of the VPC subnet"
  type        = string
 default = "gcpautoexample-subnet-09"
}

variable "instance_name"{
    description = "The name of the compute instance"
  type        = string
  default = "gcpautoexample-instance"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default = "10.0.1.0/24"
}

variable "region" {
  description = "The region for the resources"
  type        = string
  default = "us-central1"
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
  default = "gcpautosimplebuckettest09"
}

variable "location" {
  description = "The location for the storage bucket"
  type        = string
  default = "us-central1"
}

variable "disk_name" {
  description = "The name of the compute disk"
  type        = string
  default = "gcpautodisckname"
}

variable "disk_type" {
  description = "The type of compute disk"
  type        = string
  default = "pd-standard"
}

variable "zone" {
  description = "The zone for the compute resources"
  type        = string
  default = "us-central1-a"
}

variable "disk_size" {
  description = "The size of the compute disk in GB"
  type        = number
  default = "50"
}

variable "address_name" {
  description = "The name for the load balancer IP address"
  type        = string
  default = "gcpautoexample-address"
}

variable "forwarding_rule_name" {
  description = "The name for the load balancer forwarding rule"
  type        = string
 default = "gcpautoexample-forwarding-rule"
}

variable "health_check_name" {
    description = "The name for the load balancer health check"
    type        = string
    default = "gcpautoexample-health-check"
  }

variable "target_pool_name" {
    description = "The name for the load balancer target pool"
    type        = string
    default = "gcpautotargetpool"
   }
