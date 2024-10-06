variable "address_name" {
  description = "The name for the global IP address resource"
  type        = string
  default     = "gcpautoglobalip"  # Default global IP address name
}

variable "region" {
  description = "The region where the load balancer and IP address will be created"
  type        = string
  default     = "us-central1"  # Default GCP region
}

variable "health_check_name" {
  description = "The name of the HTTP health check resource"
  type        = string
  default     = "gcpautohealthcheck"  # Default health check name
}

variable "target_pool_name" {
  description = "The name of the target pool"
  type        = string
  default     = "gcpautotarget"  # Default target pool name
}

variable "instances" {
  description = "A list of instance URIs that the load balancer will send traffic to"
  type        = list(string)
}

variable "forwarding_rule_name" {
  description = "The name of the forwarding rule"
  type        = string
  default     = "gcpautoforwardingrule"  # Default forwarding rule name
}
