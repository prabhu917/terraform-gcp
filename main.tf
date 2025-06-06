module "gcs_bucket" {
  source = "./modules/gcs"
  bucket_name = var.bucket_name
  region      = var.region
  gcs_folder_name = var.gcs_folder_name
}

module "bigquery_dataset" {
  source = "./modules/bigquery"
  project_id  = var.project_id
  region      = var.region
  bq_dataset_id = var.bq_dataset_id
}

module "dataproc_cluster" {
  source = "./modules/dataproc"
  region   = var.region
  dataproc_cluster_name      = var.dataproc_cluster_name
  dataproc_master_machine_type = var.dataproc_master_machine_type
  dataproc_worker_machine_type = var.dataproc_worker_machine_type
  dataproc_worker_count      = var.dataproc_worker_count
  staging_bucket_name        = module.gcs_bucket.bucket_name
  service_account_email      = module.iam.service_account_email
}

module "iam" {
  source = "./modules/iam"
  project_id = var.project_id
  gcs_bucket_name = module.gcs_bucket.bucket_name
  bq_dataset_id = module.bigquery_dataset.dataset_id
  service_account_id = var.service_account_id
  service_account_display_name = var.service_account_display_name
  service_account_roles = var.service_account_roles
}

module "vpc_network" {
  source = "./modules/network"
  network_name = var.network_name
  project_id = var.project_id
} 