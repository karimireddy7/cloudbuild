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
