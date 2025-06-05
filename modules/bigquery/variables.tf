variable "bq_dataset_id" {
  description = "The ID of the BigQuery dataset"
  type        = string
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region where the dataset will be created"
  type        = string
} 