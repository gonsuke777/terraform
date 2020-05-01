# 1. What is this?
This is terraform examples for OCI(Oracle Cloud Infrastructure) test environments.

# 2. Pre-requirements
* Terraform install and oci configration completed.
* Compartment creation.
* Create two SSH key pairs(*.pub, *.pem or *.ppk) for Compute instance. 

# 3. Hot to use
## (1). Clone or Download this directory and files.
```
git clone https://github.com/gonsuke777/terraform
```

## (2). Edit variables(vars.tf).  
* tenancy_ocid ... Tenancy OCID, get from OCI console at tenancy.  
* bucket_namespace ... Object Storage namespace, get from OCI Console at tenancy.
* region ... OCI region. For examples, ap-tokyo-1, us-phoenix-1, etc...
* compartment_ocid ... Compartment OCID, get from OCI console at compartment.
* os_image_source_id ... Regional OS Image ID, this ID is different for each region. Look https://docs.cloud.oracle.com/iaas/images/
* public_compute_ssh_key, private_compute_ssh_key ... File name of ssh public key (*.pub).
* public_compute_ad_num, private_compute_ad_num ... This is the AD index to place the compute, 1 or 2 or 3. In case 1AD region, it is only 1.
* oci_resourcel_prefix ... Resource name prefix. Maximum 4 characters.

## (3). 

