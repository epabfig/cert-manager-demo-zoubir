resource "google_compute_router" "gke-net-router" {
  project = var.gcp_project_id
  name    = "gke-net-router"
  network = google_compute_network.vpc_network.name
  bgp {
    asn = 64514
  }

}
