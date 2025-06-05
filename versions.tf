terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-sample-bucket-12049"
    prefix = "terraform-remote-file/state"
  }
} 