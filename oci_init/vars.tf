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


