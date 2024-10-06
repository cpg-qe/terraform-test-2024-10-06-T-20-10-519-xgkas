variable "disk_name" {
  description = "The name of the persistent disk"
  type        = string
  default     = "gcpautodisk"  # Default disk name
}

variable "disk_type" {
  description = "The type of the persistent disk"
  type        = string
  default     = "pd-standard"  # Default disk type: pd-standard, pd-ssd, or pd-balanced
}

variable "zone" {
  description = "The zone where the persistent disk will be created"
  type        = string
  default     = "us-central1-a"  # Default GCP zone
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "disk_size_gb" {
  description = "The size of the persistent disk in GB"
  type        = number
  default     = 100  # Default size of the disk in GB
}
