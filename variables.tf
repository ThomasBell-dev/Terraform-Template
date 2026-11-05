
variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "subnet_cidr" {
  description = "Primary subnet IPv4 CIDR range"
  type        = string
  default     = "10.0.255.0/24"
}
