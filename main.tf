terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("big-signifier-299010-384ce602ec02-private-key.json")

  project = "big-signifier-299010"
  region  = "us-west2"
  zone    = "us-west2-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"