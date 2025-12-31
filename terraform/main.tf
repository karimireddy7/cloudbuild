terraform {
  backend "gcs" {
    bucket = "ck7674"
    prefix = "terraform/tfstate"
  }
}
resource "google_storage_bucket" "bucket-enabled" {
  name          = "lumen-ck7674-bucket"
  project       = "ck7674"
  location      = "EU"
  force_destroy = true
}
##
resource "google_storage_bucket" "bucket-enabled1" {
  name          = "lumen-ck7674-bucket2"
  project       = "ck7674"
  location      = "EU"
  force_destroy = true
}
##
resource "google_compute_network" "vpc_network" {
  name = "demo-vpc"
}

resource "google_compute_instance" "vm_instance" {
   name          = "demo-vm"
   machine_type = "e2-micro"
   zone          = "us-central1-a"

boot_disk {
initialize_params {
   image         = "debian-cloud/debian-11"
}
}
network_interface {
network =  google_compute_network.vpc_network.name
access_config {}
}
}
