variable "dataproc_cluster_name" {
  description = "The name of the Dataproc cluster"
  type        = string
}

variable "region" {
  description = "The GCP region where the Dataproc cluster will be created"
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

variable "staging_bucket_name" {
  description = "The name of the GCS bucket to use for Dataproc staging"
  type        = string
}

variable "service_account_email" {
  description = "The email of the service account to use for Dataproc worker nodes"
  type        = string
} 