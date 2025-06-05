resource "google_bigquery_dataset" "main_dataset" {
  dataset_id                  = var.bq_dataset_id
  project                     = var.project_id
  location                    = var.region
  friendly_name               = var.bq_dataset_id
  description                 = "Dataset for ${var.project_id}"
  default_table_expiration_ms = 3600000 # Example: 1 hour
  labels = {
    environment = "development"
  }
} 