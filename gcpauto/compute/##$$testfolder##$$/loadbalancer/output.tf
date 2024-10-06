output "lb_ip_address" {
  value       = google_compute_address.lb_ip.address
  description = "The IP address of the load balancer"
}
