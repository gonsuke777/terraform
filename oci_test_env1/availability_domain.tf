# Avilability Domain

data oci_identity_availability_domain export_xCoU-AP-TOKYO-1-AD-1 {
  compartment_id = "${var.compartment_ocid}"
  ad_number      = "1"
}

# Get a list of Availability Domains, this code from https://www.terraform.io/docs/providers/oci/guides/best_practices.html
data "oci_identity_availability_domains" "ads" {
  compartment_id = "${var.tenancy_ocid}"
}

# Output the result
output "show-ads" {
  value = "${data.oci_identity_availability_domains.ads.availability_domains}"
}


