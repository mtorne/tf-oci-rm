resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = "${var.compartment_ocid}"
    shape = "VM.Standard.E2.1"
    source_details {
        source_id = "${var.InstanceImageOCID[var.region]}"
        source_type = "image"
    }

    # Optional
    display_name = "terraform_ubuntu_compute_instance"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = "ocid1.subnet.oc1.eu-frankfurt-1.aaaaaaaarly4nrjvsjze2edar37t7jzydmanech6ow3bl6uhhgwnsiwx3thq"
    }
    metadata = {
        ssh_authorized_keys = file("ubuntu_key.pub")
    } 
    preserve_boot_volume = false
}
