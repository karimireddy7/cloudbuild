variable "project_id" {
    description = "GCP project ID"
    type = string
    default = "ck7674"
}

variable "region" {
    description = "region"
    type = string
    default = "us-central1"
}

variable "zone" {
    description = "zone"
    type = string
    default = "us-central1-a"
}

variable "vm_name" {
    description = " VM_name"
    type = string
    default = "test-vm"
}

variable "machine_type" {
    description = "machine_type"
    type = string
    default = "e2-micro"
}