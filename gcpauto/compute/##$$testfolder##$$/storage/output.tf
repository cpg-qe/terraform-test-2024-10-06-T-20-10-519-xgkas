output "bucket_name" {
  value       = google_storage_bucket.bucket_test.name
  description = "The name of the storage bucket"
}

output "bucket_url" {
  value       = "gs://${google_storage_bucket.bucket_test.name}"
  description = "The URL of the storage bucket"
}
