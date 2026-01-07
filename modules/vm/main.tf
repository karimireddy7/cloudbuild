variable "vm_name" {
    type = string
}
variable "machine_type" {
    type = string
}
variable "zone" {
    type = string
}
variable "vpc_name" {
    type = string
}
resource "google_compute_instance" "vm" {
    name = "demo-vm"
    machine_type = var.machine_type
    zone = var.zone

    boot_disk {
        initialize_params {
            image = "projects/debian-cloud/global/images/family/debian-11"
        }
}
network_interface {
    network = var.vpc_name
    access_config {}
}
}