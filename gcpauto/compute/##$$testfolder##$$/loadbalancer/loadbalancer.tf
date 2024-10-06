resource "google_compute_address" "lb_ip" {
  name   = "${var.address_name}-${random_hex.bucket_suffix[0].result}"
  region = var.region
}

resource "google_compute_http_health_check" "http_health_check" {
  name               = "${var.health_check_name}-${random_hex.bucket_suffix[0].result}"
}

resource "google_compute_target_pool" "target_pool" {
  name = "${var.target_pool_name}-${random_hex.bucket_suffix[0].result}"

  instances = var.instances

  health_checks = [
    google_compute_http_health_check.http_health_check.name,
  ]
}

resource "google_compute_forwarding_rule" "forwarding_rule" {
  name       = "${var.forwarding_rule_name}-${random_hex.bucket_suffix[0].result}"
  target     = google_compute_target_pool.target_pool.self_link
  port_range = "80"
}

resource "random_hex" "bucket_suffix" {
  count = var.bucket_count
  length = 4  # Length of the random hex suffix
}