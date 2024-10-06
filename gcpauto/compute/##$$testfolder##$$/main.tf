module "vpc" {
  source = "./vpc"
  network_name = var.network_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  region       = var.gcp_region
  project_id   = var.gcp_project
}

module "storage" {
  source      = "./storage"
  bucket_name = var.bucket_name
  location    = var.gcp_region
  project_id  = var.gcp_project
}

module "disk" {
  source      = "./disk"
  disk_name   = var.disk_name
  disk_type   = var.disk_type
  zone        = var.gcp_zone
  disk_size_gb = var.disk_size
  project_id  = var.gcp_project
}

module "loadbalancer" {
  source               = "./loadbalancer" # Make sure this matches your directory name
  address_name         = var.address_name
  forwarding_rule_name = var.forwarding_rule_name
  health_check_name    = var.health_check_name
  instances            = [google_compute_instance.vm.self_link]
  region               = var.gcp_region
  target_pool_name     = var.target_pool_name
}

resource "google_compute_instance" "vm" {
  name         = "${var.instance_name}-${random_id.bucket_suffix.hex}"
  machine_type = "e2-medium"
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20220131"
    }
  }

  network_interface {
    network = module.vpc.network_name
    subnetwork = module.vpc.subnet_name
  }

  // Attach the persistent disk created by the disk module
  attached_disk {
    source = module.disk.disk_self_link
  }
}

// Your existing variables and provider configuration...

variable "gcp_project" {
  description = "The GCP project ID."
}

variable "gcp_region" {
  description = "The GCP region."
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "The GCP zone."
  default     = "us-central1-a"
}
variable "credentials" { }


provider "google" {
  #credentials = file("/home/cmpdev/terraformgcp/temp_testing_tf_files/automation-226410-e2b383330866.json")
  project = var.gcp_project
  region  = var.gcp_region
  zone    = var.gcp_zone
  credentials = var.credentials
}

resource "random_id" "bucket_suffix" {
  byte_length = 4  # Adjust the length of the random string (in bytes)
}
