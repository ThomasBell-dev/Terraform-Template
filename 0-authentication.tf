# https://registry.terraform.io/providers/hashicorp/google/latest/docs

#Chewbacca: The Force needs coordinates.
#You need this first in order to see if you can authenticate to GCP

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" 
    }
  }
}

provider "google" {
  project = "seir-cloudrunner"
  region  = "us-central1-a"
}
