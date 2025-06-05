# GCS Outputs
output "gcs_bucket_name" {
  description = "The name of the GCS bucket"
  value       = module.gcs_bucket.bucket_name
}

output "gcs_bucket_url" {
  description = "The base URL of the GCS bucket"
  value       = module.gcs_bucket.bucket_url
}

output "gcs_folder_path" {
  description = "The path of the created folder in the GCS bucket"
  value       = module.gcs_bucket.folder_path
}

# BigQuery Outputs
output "bq_dataset_id" {
  description = "The ID of the BigQuery dataset"
  value       = module.bigquery_dataset.dataset_id
}

output "bq_dataset_location" {
  description = "The location of the BigQuery dataset"
  value       = module.bigquery_dataset.dataset_location
}

# Dataproc Outputs
output "dataproc_cluster_name" {
  description = "The name of the Dataproc cluster"
  value       = module.dataproc_cluster.cluster_name
}

output "dataproc_cluster_config" {
  description = "The configuration of the Dataproc cluster"
  value       = module.dataproc_cluster.cluster_config
}

# IAM Outputs
output "service_account_email" {
  description = "The email of the service account"
  value       = module.iam.service_account_email
}

output "service_account_name" {
  description = "The fully qualified name of the service account"
  value       = module.iam.service_account_name
}

output "service_account_roles" {
  description = "The list of IAM roles assigned to the service account"
  value       = module.iam.assigned_roles
}

# Project Information
output "project_id" {
  description = "The GCP project ID"
  value       = var.project_id
}

output "region" {
  description = "The GCP region where resources are deployed"
  value       = var.region
} 