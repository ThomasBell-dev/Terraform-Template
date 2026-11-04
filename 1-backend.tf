# https://www.terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket = "deathstarbucket-tf"
    prefix = "terraform/state"
    credentials = "cloudrunner_key.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}