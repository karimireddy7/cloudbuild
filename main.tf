terraform {
    backend "gcs" {
        bucket = "ck7674-tf-state"
        prefix = "terraform/vm-assessment"
    }
}
provider "google" {
    project = var.project_id
    region = var.region
}

module "vpc" {
    source = "./modules/vpc"
    vpc_name = "assessment-vpc"
}

module "vm" {
    source = "./modules/vm"
    vm_name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    vpc_name = module.vpc.vpc_name
}
