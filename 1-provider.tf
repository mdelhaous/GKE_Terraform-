# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "chessingly-observability"
  region  = "europe-west9" #Region
}

# https://www.terraform.io/language/settings/backends/gcs
#terraform {
#  #backend "gcs" {
#    #bucket = "<your-bucket>"
    #prefix = "terraform/state"
  #}
  #required_providers {
    #google = {
      #source  = "hashicorp/google"
      #version = "~> 4.0"
    #}
  #}
#}