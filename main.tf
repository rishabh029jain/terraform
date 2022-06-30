resource "google_compute_instance" "default" {
  name = "test"
  machine_type = "n1-stantard-1"
  zone = "aisa-west2-a"

boot_disk {
  initialize_params {
    image = "ubuntu-os-cloud/ubuntu-2004-lts"
  }
}


network_interface {
  network = "default"
}

service_account {
  scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}

}