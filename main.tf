terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
    project = var.project_id
    region = "asia-south1"
}
#data source to fetch current project id
data "google_project" "project" {}
variable "project_id" {
    default = "ck7674"
}
#Create 2 buckets using count
resource "google_storage_bucket" "demo" {
    count = 2
    name = "chandra-demo "
    location = "asia-southeast1"
lifecycle {
    prevent_destroy = true
}
}
#output the bucketnames
output "bucket_names" {
    value = google_storage_bucket.demo[*].name
}
