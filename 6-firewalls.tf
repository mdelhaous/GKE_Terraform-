### https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall ###
#ce code Terraform configure une règle de pare-feu sur GCP permettant le trafic TCP sur #
#le port 22 (SSH) à partir de n'importe quelle adresse IP. Cette règle de pare-feu est #
#associée au réseau principal spécifié dans la configuration Terraform.#


resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
