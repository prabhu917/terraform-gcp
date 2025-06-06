resource "google_sql_database_instance" "main_instance" {
  name             = var.sql_instance_name
  region           = var.region
  database_version = var.sql_database_version

  settings {
    tier = var.sql_tier
    ip_configuration {
      ipv4_enabled = true
      require_ssl  = true
      # Uncomment and configure authorized_networks if needed
      # authorized_networks {
      #   value = "0.0.0.0/0" # Replace with your IP range
      # }
    }

    backup_configuration {
      enabled            = true
      binary_log_enabled = false # Set to true for point-in-time recovery (MySQL only)
    }

    # You can add other settings here, like availability_type, disk_autoresize, etc.
  }
}

resource "google_sql_database" "main_database" {
  name     = var.sql_database_name
  instance = google_sql_database_instance.main_instance.name
  project  = var.project_id
}

resource "google_sql_user" "main_user" {
  name     = var.sql_username
  instance = google_sql_database_instance.main_instance.name
  password = var.sql_password
  project  = var.project_id
} 