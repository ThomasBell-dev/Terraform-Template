# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project = "seir-cloudrunner"
  region  = "southamerica-east1"
  credentials = "cloudrunner_key.json"
}