
variable "compartment_ocid" {
	default = "ocid1.compartment.oc1..aaaaaaaagz2culbclkwhavebagh2q2cb2enom6ka7unly34kpaoswcpxv6hq"
}

variable "region" {
	default = "eu-frankfurt-1"
}

variable "InstanceImageOCID" {
  type = "map"
  
  default = {
    // See https://docs.cloud.oracle.com/images/
    // Platform image "Oracle-Linux-7.5-2018.10.16-0"
    "eu-frankfurt-1" = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaitzn6tdyjer7jl34h2ujz74jwy5nkbukbh55ekp6oyzwrtfa4zma"
    "uk-london-1" = "ocid1.image.oc1.uk-london-1.aaaaaaaa32voyikkkzfxyo4xbdmadc2dmvorfxxgdhpnk6dw64fa3l4jh7wa"
    "us-ashburn-1" = "ocid1.image.oc1.iad.aaaaaaaageeenzyuxgia726xur4ztaoxbxyjlxogdhreu3ngfj2gji3bayda"
    "us-phoenix-1" = "ocid1.image.oc1.phx.aaaaaaaaoqj42sokaoh42l76wsyhn3k2beuntrh5maj3gmgmzeyr55zzrwwa"
  }
}


variable "ssh_public_key" {
	default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWemA6vLmITGKuhI1wNdWVMcjWgjTU9uoCtj/zzD4jw9Nw10am4v1eo2prNk8sbiyrp2I3S9dnF2SfZ9b8dD5IncqGyeYVrx5WKhqod68quZZd8fibblL2OU7XyykjB98bVcLS3xYDX9Evb6jQfmcTo6ImOqYAVDfpdVjJWdqeDDKoHv2uReOTOUboewqVfuH1By3XxlsVN9yAmaJqAl9yTqfite+FESXcKBFUyGiNa8nHD6jRudvL2MiZyox2SgDXUHGvJievGH0W512SQuCzSSdyIeofDUNtk6IH+ojv1TTlc1x5B4kiYJbV86cyWtobPqQfL7a2P2ZUXMx2TnfJ ubuntu_key"
}

# Defines the number of instances to deploy
variable "NumInstances" {
    default = "1"
}

variable "InstanceShape" {
    default = "VM.Standard2.1"
}

# Specifies the Availability Domain
variable "localAD" {
    default = "<AD_name>"
}