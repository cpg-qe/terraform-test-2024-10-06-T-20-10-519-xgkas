resource "google_compute_network" "vpc_network" {
  name                    = "${var.network_name}-${random_hex.bucket_suffix[0].result}"
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnet_name}-${random_hex.bucket_suffix[0].result}"
  network       = google_compute_network.vpc_network.self_link
  ip_cidr_range = var.subnet_cidr
  region        = var.region
}

resource "random_hex" "bucket_suffix" {
  count = var.bucket_count
  length = 4  # Length of the random hex suffix
}