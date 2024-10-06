resource "google_compute_network" "vpc_network" {
  name                    = "${var.network_name}-${random_id.bucket_suffix.hex}"
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnet_name}-${random_id.bucket_suffix.hex}"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = var.subnet_cidr
  region        = var.region
}

resource "random_id" "bucket_suffix" {
  byte_length = 4  # Adjust the length of the random string (in bytes)
}
