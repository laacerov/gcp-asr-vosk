resource "google_compute_address" "static" {
  name = "ip-${var.host}"
  region = var.region
}

resource "google_compute_instance" "default" {
name = var.host

machine_type = var.machine_type
zone = var.zone

tags = ["fw-curso"]

boot_disk {
    initialize_params {
        image = var.image
    }
 }

network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

service_account {
    scopes = ["userinfo-email","compute-ro","storage-ro"]
 }


}


output "machine_type" {
  value = "${google_compute_instance.default.*.machine_type}"
}

output "name" {
  value = "${google_compute_instance.default.*.name}"
}

output "zone" {
  value = "${google_compute_instance.default.*.zone}"
}

output "ip" {
  value = "${google_compute_instance.default.network_interface.0.network_ip}"
}

output "ip-public" {
  value = "${google_compute_address.static.address}"
}
