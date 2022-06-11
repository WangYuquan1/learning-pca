variable "vpc_name" {}
variable "subnetwork_name" {}
variable "subnet_cidr_range" {}
variable "region" {}
variable "auto_create_subnetworks" {}

resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks

}

resource "google_compute_subnetwork" "vpc_subnet1" {
  name          = var.subnetwork_name
  ip_cidr_range = var.subnet_cidr_range
  network       = google_compute_network.vpc.name
  description   = "example.subnet1"
  region        = var.region
  secondary_ip_range {
    range_name    = "ip-range-pods-name"
    ip_cidr_range = "172.10.0.0/24"
  }
  secondary_ip_range {
    range_name    = "ip-range-services-name"
    ip_cidr_range = "172.20.0.0/24"
  }
}
