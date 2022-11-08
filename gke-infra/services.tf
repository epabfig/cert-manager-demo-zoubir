resource "google_project_service" "compute" {
  service            = "container.googleapis.com"
  disable_on_destroy = false
}
