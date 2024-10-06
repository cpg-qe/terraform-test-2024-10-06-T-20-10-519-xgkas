resource "google_compute_disk" "persistent_disk" {
  name    = "${var.disk_name}-${random_id.bucket_suffix.hex}"
  type    = var.disk_type
  zone    = var.zone
  project = var.project_id
  size    = var.disk_size_gb
}

resource "random_id" "bucket_suffix" {
  byte_length = 4  # Adjust the length of the random string (in bytes)
}
