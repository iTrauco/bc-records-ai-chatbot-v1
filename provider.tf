provider "google" {
  credentials = file(var.secrets)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.40.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.0"
    }
  }

  required_version = ">= 1.2.0"
}