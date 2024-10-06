resource "google_compute_disk" "persistent_disk" {
  name    = "${var.disk_name}-${random_hex.bucket_suffix[count.index].result}"
  type    = var.disk_type
  zone    = var.zone
  project = var.project_id
  size    = var.disk_size_gb
}

resource "random_hex" "bucket_suffix" {
  count = var.bucket_count
  length = 4  # Length of the random hex suffix
}