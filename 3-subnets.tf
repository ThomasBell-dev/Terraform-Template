# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
# https://www.economize.cloud/resources/gcp/regions-zones-map

// HQ

#Go to:
#VPC Network → Subnets
#Confirm:
#    subnet exists
#    secondary ranges visible

resource "google_compute_subnetwork" "farm-life" {
  name                     = "farm-life"
  ip_cidr_range            = var.subnet_cidr
  region                   = var.region
  network                  = google_compute_network.main.id
  private_ip_google_access = true

  # IMPORTANT:
  # These CIDR ranges MUST NOT overlap
  # Do not modify unless you understand subnetting

  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.48.0.0/14"
  }

  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.52.0.0/20"
  }

  depends_on = [
    google_compute_network.main
  ]
}