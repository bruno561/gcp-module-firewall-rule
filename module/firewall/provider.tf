terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.10.0"
    }
  }
  backend "gcs" {
  }
}