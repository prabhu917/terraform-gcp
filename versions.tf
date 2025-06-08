terraform {
  required_version = ">= 1.3.0" # Terraform 1.3+ is more stable for provider behaviors and modules

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"  # More recent and compatible with current GCP features
    }
  }
}
