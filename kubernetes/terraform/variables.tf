variable project {
  description = "Project ID"
  default = "gitlab-xxx"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-c"
}

variable machine_type {
  description = "Machine type"
  default     = "g1-small"
}

variable disk_size {
  description = "Disk size"
  default     = "20"
}

variable initial_node_count {
  description = "Initial Node Count"
  default     = 2
}

variable gke_version {
  description = "GKE Version"
  default     = "1.10.9-gke.5"
}