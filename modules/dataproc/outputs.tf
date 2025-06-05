output "cluster_name" {
  description = "The name of the Dataproc cluster"
  value       = google_dataproc_cluster.main_cluster.name
}

output "cluster_id" {
  description = "The ID of the Dataproc cluster"
  value       = google_dataproc_cluster.main_cluster.id
}

output "cluster_config" {
  description = "The configuration of the Dataproc cluster"
  value = {
    master_config = google_dataproc_cluster.main_cluster.cluster_config[0].master_config[0]
    worker_config = google_dataproc_cluster.main_cluster.cluster_config[0].worker_config[0]
    software_config = google_dataproc_cluster.main_cluster.cluster_config[0].software_config[0]
  }
}

output "cluster_staging_bucket" {
  description = "The GCS bucket used for staging"
  value       = google_dataproc_cluster.main_cluster.cluster_config[0].staging_bucket
} 