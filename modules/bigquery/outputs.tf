output "dataset_id" {
  description = "The ID of the BigQuery dataset"
  value       = google_bigquery_dataset.main_dataset.dataset_id
}

output "dataset_self_link" {
  description = "The URI of the BigQuery dataset"
  value       = google_bigquery_dataset.main_dataset.self_link
}

output "dataset_friendly_name" {
  description = "The friendly name of the BigQuery dataset"
  value       = google_bigquery_dataset.main_dataset.friendly_name
}

output "dataset_location" {
  description = "The location of the BigQuery dataset"
  value       = google_bigquery_dataset.main_dataset.location
} 