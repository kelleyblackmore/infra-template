provider "google" {
    project = var.project_id
    region  = var.region
}

resource "google_compute_network" "default" {
    name = "default-network"
}

resource "google_compute_subnetwork" "default" {
    name          = "default-subnetwork"
    ip_cidr_range = "10.0.0.0/16"
    network       = google_compute_network.default.id
    region        = var.region
}

variable "project_id" {
    description = "The ID of the project in which to create resources."
    type        = string
}

variable "region" {
    description = "The region in which to create resources."
    type        = string
    default     = "us-central1"
}