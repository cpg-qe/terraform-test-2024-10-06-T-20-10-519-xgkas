resource "google_compute_address" "lb_ip" {
  name   = "${var.address_name}-${random_id.bucket_suffix.hex}"
  region = var.region
}

resource "google_compute_http_health_check" "http_health_check" {
  name               = "${var.health_check_name}-${random_id.bucket_suffix.hex}"
}

resource "google_compute_target_pool" "target_pool" {
  name = "${var.target_pool_name}${random_id.bucket_suffix.hex}"

  instances = var.instances

  health_checks = [
    google_compute_http_health_check.http_health_check.name,
  ]
}

resource "google_compute_forwarding_rule" "forwarding_rule" {
  name       = "${var.forwarding_rule_name}-${random_id.bucket_suffix.hex}"
  target     = google_compute_target_pool.target_pool.self_link
  port_range = "80"
}

resource "random_string" "bucket_suffix" {
  length  = 3  # Adjust the length of the random string
  upper   = false  # Set to true if you want uppercase letters
  special = false  # Set to true if you want special characters
  number  = false  # Set to true if you want numbers
}
