output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.my_bucket.name
}

output "bucket_self_link" {
  description = "The URI of the GCS bucket"
  value       = google_storage_bucket.my_bucket.self_link
}

output "bucket_url" {
  description = "The base URL of the GCS bucket"
  value       = google_storage_bucket.my_bucket.url
}

output "folder_path" {
  description = "The path of the created folder in the GCS bucket"
  value       = "${google_storage_bucket.my_bucket.name}/${var.gcs_folder_name}/"
} 