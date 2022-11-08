
resource "google_compute_address" "regional_external_ip" {
  provider      = google
  project = var.gcp_project_id
  name          = "myapp-nginx-service-web-ip"
  address_type  = "EXTERNAL"
  region        = var.gcp_region
}
