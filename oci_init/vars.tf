# Variables

## Provider Variables
### tenant ocid
variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

### IAM User
variable "iam_user_ocid" {
  default = "ocid1.user.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

### IAM User fingerprint
variable "iam_user_fingerprint" {
  default = "xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx:xx"
}

### IAM User private key path(pair of fingerprint)
variable "iam_user_private_key_path" {
  default = "./sshkey/oci-terraform.pem"
}

variable "bucket_namespace" {
  #from tenancy infomation in oci console at "Object Storage Settings"
  default = "xxxxxxxxxxxx"
}

variable "region" {
  default = "ap-tokyo-1"
}

variable "compartment_ocid" {
  description = "The compartment which resources will be created"
  default     = "ocid1.compartment.oc1..xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}


