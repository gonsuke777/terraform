# Compute Instance

locals {
  kernel_update_user_data = <<-EOT
#cloud-config
runcmd:
  - |
    set -e
    if command -v dnf >/dev/null 2>&1; then
      dnf -y update 'kernel*'
    else
      yum -y update 'kernel*'
    fi
    shutdown -r +1 "Rebooting to apply kernel update"
EOT
}

resource oci_core_instance export_BASTION1 {
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "${upper(var.oci_resource_prefix)}-BASTION1"
  # This code from https://www.terraform.io/docs/providers/oci/guides/best_practices.html
  # It to get a single AD name based on the index:
  availability_domain = "${lookup(data.oci_identity_availability_domains.ads.availability_domains[var.public_compute_ad_num - 1], "name")}"
  shape               = "VM.Standard.E4.Flex"
  shape_config {
    memory_in_gbs = "16"
    ocpus = "1"
  }
  source_details {
    source_type = "image"
    source_id   = "${var.os_image_source_id}"
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = true
  }
  create_vnic_details {
    assign_public_ip = "true"
    hostname_label   = "${lower(var.oci_resource_prefix)}-bastion1"
    subnet_id        = "${oci_core_subnet.export_PUB-SUBNET1.id}"
  }
  metadata = {
    ssh_authorized_keys = "${file(var.public_compute_ssh_key)}"
    user_data           = "${base64encode(local.kernel_update_user_data)}"
  }
}

resource oci_core_instance export_PRVCOMP1 {
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "${upper(var.oci_resource_prefix)}-PRVCOMP1"
  # This code from https://www.terraform.io/docs/providers/oci/guides/best_practices.html
  # It to get a single AD name based on the index:
  availability_domain = "${lookup(data.oci_identity_availability_domains.ads.availability_domains[var.private_compute_ad_num - 1], "name")}"
  shape               = "VM.Standard.E4.Flex"
  shape_config {
    memory_in_gbs = "16"
    ocpus = "1"
  }
  source_details {
    source_type = "image"
    source_id   = "${var.os_image_source_id}"
  }
  instance_options {
    are_legacy_imds_endpoints_disabled = true
  }
  create_vnic_details {
    assign_public_ip = "false"
    hostname_label   = "${lower(var.oci_resource_prefix)}-prvcomp1"
    subnet_id        = "${oci_core_subnet.export_PRV-SUBNET2.id}"
  }
  metadata = {
    ssh_authorized_keys = "${file(var.private_compute_ssh_key)}"
    user_data           = "${base64encode(local.kernel_update_user_data)}"
  }
}


