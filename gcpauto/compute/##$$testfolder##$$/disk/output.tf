output "disk_name" {
  value       = google_compute_disk.persistent_disk.name
  description = "The name of the persistent disk"
}

output "disk_self_link" {
  value       = google_compute_disk.persistent_disk.self_link
  description = "The URI of the persistent disk"
}
