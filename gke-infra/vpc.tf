resource "google_compute_network" "vpc_network" {
  name                    = format("vpc-%s-%s-%s", var.org, var.product, var.environment)
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
  project       = var.gcp_project_id
}

