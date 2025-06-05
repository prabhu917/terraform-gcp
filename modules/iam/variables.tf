variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "gcs_bucket_name" {
  description = "The name of the GCS bucket the service account needs object viewer permission for."
  type        = string
}

variable "bq_dataset_id" {
  description = "The ID of the BigQuery dataset the service account needs data editor permission for."
  type        = string
}

variable "service_account_id" {
  description = "The ID of the service account to create"
  type        = string
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
} 