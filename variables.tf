variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region where resources will be created"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "credentials_file" {
  description = "Path to the service account key file"
  type        = string
}

variable "sql_instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "sql_database_version" {
  description = "The database version of the Cloud SQL instance (e.g., MYSQL_8_0, POSTGRES_14)"
  type        = string
  default     = "POSTGRES_14"
}

variable "sql_tier" {
  description = "The machine tier of the Cloud SQL instance (e.g., db-f1-micro)"
  type        = string
  default     = "db-f1-micro"
}

variable "sql_database_name" {
  description = "The name of the database within the Cloud SQL instance"
  type        = string
  default     = "mydatabase"
}

variable "sql_username" {
  description = "The username for the Cloud SQL user"
  type        = string
}

variable "sql_password" {
  description = "The password for the Cloud SQL user. USE A STRONG PASSWORD!"
  type        = string
  sensitive   = true
}

variable "bq_dataset_id" {
  description = "The ID of the BigQuery dataset"
  type        = string
}

variable "dataproc_cluster_name" {
  description = "The name of the Dataproc cluster"
  type        = string
}

variable "dataproc_master_machine_type" {
  description = "Machine type for the Dataproc master node"
  type        = string
  default     = "n1-standard-4"
}

variable "dataproc_worker_machine_type" {
  description = "Machine type for the Dataproc worker nodes"
  type        = string
  default     = "n1-standard-4"
}

variable "dataproc_worker_count" {
  description = "Number of Dataproc worker nodes"
  type        = number
  default     = 2
}

variable "gcs_folder_name" {
  description = "The name for the folder within the GCS bucket created by the GCS module."
  type        = string
}

variable "service_account_id" {
  description = "The ID of the service account to create"
  type        = string
  default     = "dataproc-worker-sa"
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
  default     = "Dataproc Worker Service Account"
}

variable "service_account_roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
  default     = [
    "roles/storage.objectViewer",
    "roles/storage.objectAdmin",
    "roles/bigquery.dataEditor",
    "roles/bigquery.jobUser",
    "roles/dataproc.worker",
    "roles/dataproc.serviceAgent"
  ]
} 