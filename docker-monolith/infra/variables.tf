variable public_key_path {
  description = "Path to the public key used to connect to instance"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable disk_image {
  description = "Disk image for reddit app"
  default     = "ubuntu-1604-lts"
}

variable project {
  description = "Project id"
}
