variable "vpc_name" {
    type = string
}
resource "google_compute_network" "vpc" {
    name = "demo-vpc"
auto_create_subnetworks = true
}