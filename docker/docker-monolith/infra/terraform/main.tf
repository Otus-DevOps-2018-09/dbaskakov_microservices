provider "google" {
    version = "1.4.0"
    project = "${var.project}"
    region = "europe-west1"
}

resource "google_compute_instance" "docker-res" {
    count = 1
    name = "docker${count.index}"
    machine_type = "g1-small"
    zone = "europe-west1-b"
    
    tags = ["docker"]

    boot_disk {
        initialize_params {
            image = "${var.disk_image}"
        }
    }

    network_interface {
        network = "default"
        access_config {}
    }

    metadata {
        ssh-keys = "appuser:${file(var.public_key_path)}"
    }

}

resource "google_compute_firewall" "firewall_docker" {
    name = "allow-app"
    network = "default"
    allow {
        protocol = "tcp"
        ports = ["9292"]
    }
    source_ranges = ["0.0.0.0/0"]
    target_tags = ["docker"]
}