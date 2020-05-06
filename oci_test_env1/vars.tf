# Variables

## Provider Variables
### tenant ocid
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

### IAM User OCID
variable "iam_user_ocid" {
  default = "ocid1.user.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

### API fingerprint of IAM User
variable "iam_user_fingerprint" {
  default = "xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
}

### IAM User private key path(pair of API fingerprint)
variable "iam_user_private_key_path" {
  default = "./sshkey/oci-terraform.pem"
}

## OCI region (ex:ap-tokyo-1, us-phoenix-1, etc...)
variable "region" {
  default = "us-phoenix-1"
}

# Compartment OCID
variable "compartment_ocid" {
  description = "The compartment which resources will be created"
  default     = "ocid1.compartment.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

## Compute Variables
### Regional OS Image ID, this ID is different for each region. Look https://docs.cloud.oracle.com/iaas/images/
variable "os_image_source_id" {
  description = "For OS Image Source ID, look https://docs.cloud.oracle.com/iaas/images/"
  default     = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaapjdxul7sl5m726x46fnuinb3fisawuuo7dz5ig72bonvd3d5743a"
}

### Compute ssh key path(pub format)
variable "public_compute_ssh_key" {
  description = "Public Compute ssh key file (in pub format) path (.../.../<key_filename>)"
  default     = "./sshkey/ays-test1.pub"
}

variable "private_compute_ssh_key" {
  description = "Private Compute ssh key file (in pub format) path (.../.../<key_filename>)"
  default     = "./sshkey/ays-private.pub"
}

### Compute Availability Domain(1 or 2 or 3)
variable "public_compute_ad_num" {
  description = "Public Compute Availability Domain Num(1 or 2 or 3)"
  default     = "1"
}

variable "private_compute_ad_num" {
  description = "Private Compute Availability Domain Num(1 or 2 or 3)"
  default     = "1"
}

## Resource Prefix
variable "oci_resource_prefix" {
  description = "The prefix of all the resources to be created. Maximum 4 characters."
  default     = "AYS"
}


