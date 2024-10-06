resource "google_storage_bucket" "bucket_test" {
  name                        = "${var.bucket_prefix}-${random_hex.bucket_suffix[count.index].result}"
  location                    = var.location
  project                     = var.project_id
  storage_class               = var.storage_class

  lifecycle_rule {
    condition {
      age = var.lifecycle_rule_age
    }
    action {
      type = "Delete"
    }
  }
}

resource "random_hex" "bucket_suffix" {
  count = var.bucket_count
  length = 4  # Length of the random hex suffix
}
