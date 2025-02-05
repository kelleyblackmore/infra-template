provider "oci" {
    tenancy_ocid         = var.tenancy_ocid
    user_ocid            = var.user_ocid
    fingerprint          = var.fingerprint
    private_key_path     = var.private_key_path
    region               = var.region
}

resource "oci_core_vcn" "example_vcn" {
    cidr_block   = var.vcn_cidr_block
    display_name = var.vcn_display_name
    compartment_id = var.compartment_id
}

resource "oci_core_subnet" "example_subnet" {
    cidr_block       = var.subnet_cidr_block
    vcn_id           = oci_core_vcn.example_vcn.id
    display_name     = var.subnet_display_name
    compartment_id   = var.compartment_id
    availability_domain = var.availability_domain
}

variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "vcn_cidr_block" {}
variable "vcn_display_name" {}
variable "compartment_id" {}
variable "subnet_cidr_block" {}
variable "subnet_display_name" {}
variable "availability_domain" {}