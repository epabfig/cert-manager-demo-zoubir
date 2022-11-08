resource "google_container_cluster" "primary_cluster" {
  provider = google-beta

  project = var.gcp_project_id

  name               = format("gke-%s-%s-%s", var.org, var.product, var.environment)
  min_master_version = var.kubernetes_version
  network            = google_compute_network.vpc_network.self_link
  subnetwork         = google_compute_subnetwork.gke_standard_subnet.self_link

  location           = var.gcp_region
  logging_service    = var.logging_service
  monitoring_service = var.monitoring_service

  remove_default_node_pool = true
  initial_node_count       = 1

  private_cluster_config {
    enable_private_nodes    = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_endpoint
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }

  # Enable Dataplane V2
  datapath_provider = "ADVANCED_DATAPATH"

  release_channel {
    channel = var.release_channel
  }


  addons_config {
    http_load_balancing {
      disabled = var.disable_http_load_balancing
    }
  }
  ip_allocation_policy {
    cluster_secondary_range_name  = var.pods_cidr_name
    services_secondary_range_name = var.services_cidr_name
  }
  timeouts {
    create = "30m"
    update = "30m"
    delete = "30m"
  }
  workload_identity_config {
    workload_pool = "${var.gcp_project_id}.svc.id.goog"
  }
}
#Node Pool Resource
resource "google_container_node_pool" "custom-node_pool" {

  name       = "main-pool"
  location   = var.gcp_region
  project    = var.gcp_project_id
  cluster    = google_container_cluster.primary_cluster.name
  node_count = var.gke_pool_node_count
  version    = var.kubernetes_version

  node_config {
    image_type   = var.gke_pool_image_type
    disk_size_gb = var.gke_pool_disk_size_gb
    disk_type    = var.gke_pool_disk_type
    machine_type = var.gke_pool_machine_type
  }

  timeouts {
    create = "10m"
    delete = "10m"
  }

  lifecycle {
    ignore_changes = [
      node_count
    ]
  }

  management {
    auto_repair  = false
    auto_upgrade = false
  }


}
