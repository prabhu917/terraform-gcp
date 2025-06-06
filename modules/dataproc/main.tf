resource "google_dataproc_cluster" "main_cluster" {
  name   = var.dataproc_cluster_name
  region = var.region

  labels = {
    environment = "development"
  }

  cluster_config {
    staging_bucket = var.staging_bucket_name

    master_config {
      num_instances = 1
      machine_type  = var.dataproc_master_machine_type
      disk_config {
        boot_disk_type    = "pd-standard"
        boot_disk_size_gb = 30
      }
    }

    worker_config {
      num_instances = var.dataproc_worker_count
      machine_type  = var.dataproc_worker_machine_type
      disk_config {
        boot_disk_type    = "pd-standard"
        boot_disk_size_gb = 30
      }
    }

    software_config {
      # Dataproc image version (choose a suitable version)
      image_version = "2.1-debian11"
    }

    # Add the service account here
    gce_cluster_config {
      service_account = var.service_account_email
      service_account_scopes = [
        "cloud-platform"
      ]
    }
  }
} 