variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "region" {
  description = "The GCP region where the bucket will be created"
  type        = string
}

variable "gcs_folder_name" {
  description = "The name for the folder within the GCS bucket"
  type        = string
  default     = "data"
} 