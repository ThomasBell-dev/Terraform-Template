
output "vpc_name" {
  description = "Name of the Google Cloud VPC"
  value       = google_compute_network.main.name
}

output "vpc_id" {
  description = "ID of the Google Cloud VPC"
  value       = google_compute_network.main.id
}

output "subnet_name" {
  description = "Name of the Google Cloud subnet"
  value       = google_compute_subnetwork.farm-life.name
}

output "subnet_cidr" {
  description = "Primary IPv4 range of the subnet"
  value       = google_compute_subnetwork.farm-life.ip_cidr_range
}

output "subnet_region" {
  description = "Region containing the subnet"
  value       = google_compute_subnetwork.farm-life.region
}
