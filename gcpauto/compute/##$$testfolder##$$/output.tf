output "vpc_network_name" {
  value       = module.vpc.network_name
  description = "The name of the created VPC network"
}

output "storage_bucket_name" {
  value       = module.storage.bucket_name
  description = "The name of the created storage bucket"
}

output "compute_disk_name" {
  value       = module.disk.disk_name
  description = "The name of the created compute disk"
}

output "load_balancer_ip" {
  value       = module.loadbalancer.lb_ip_address
  description = "The IP address of the load balancer"
}
