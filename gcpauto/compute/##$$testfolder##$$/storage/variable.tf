variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
  default = "gcpautombuacket"
}

variable "location" {
  description = "The location where the storage bucket will be created"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "storage_class" {
  description = "The storage class of the bucket"
  type        = string
  default     = "STANDARD"
}

variable "lifecycle_rule_age" {
  description = "Number of days to keep the objects before deleting"
  type        = number
  default     = 30
}
