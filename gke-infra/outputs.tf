output "network_self_link" {
  value       = google_compute_network.vpc_network.self_link
  description = "The URI of the VPC being created"
}

output "network_id" {
  value       = google_compute_network.vpc_network.id
  description = "The id of the VPC being created"
}

output "name" {
  value       = google_compute_network.vpc_network.name
  description = "The name of the VPC being created"
}

output "subnet_standard_selflink" {
  value = google_compute_subnetwork.gke_standard_subnet.self_link
}
output "gke-net-router-name" {
  value = google_compute_router.gke-net-router.name
}

output "id" {
  value = google_container_cluster.primary_cluster.id
}
output "endpoint" {
  value = google_container_cluster.primary_cluster.endpoint
}
output "master_version" {
  value = google_container_cluster.primary_cluster.master_version
}