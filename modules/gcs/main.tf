resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket_object" "data_folder" {
  name    = "${var.gcs_folder_name}/"
  bucket  = google_storage_bucket.my_bucket.name
  content = "placeholder"
  # We don't need content for a folder placeholder
}
