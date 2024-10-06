output "network_name" {
  value       = google_compute_network.vpc_network.name
  description = "The name of the VPC network"
}

output "subnet_name" {
  value       = google_compute_subnetwork.subnet.name
  description = "The name of the subnet"
}

output "subnet_self_link" {
  value       = google_compute_subnetwork.subnet.self_link
  description = "The self link of the subnet"
}
