resource "google_project_service" "compute_service" {
  project = var.project
  service = "compute.googleapis.com"
}

provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}
