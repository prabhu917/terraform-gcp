terraform {
  backend "gcs" {
    bucket = "terraform-sample-bucket-12049"
    prefix = "terraform-remote-file/state"
  }
} 