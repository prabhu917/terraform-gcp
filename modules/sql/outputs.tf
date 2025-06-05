output "instance_name" {
  description = "Name of the Cloud SQL instance"
  value       = google_sql_database_instance.main_instance.name
}

output "instance_connection_name" {
  description = "Connection name of the Cloud SQL instance"
  value       = google_sql_database_instance.main_instance.connection_name
}

output "instance_public_ip" {
  description = "Public IP address of the Cloud SQL instance (if ipv4_enabled)"
  value       = google_sql_database_instance.main_instance.public_ip_address
}

output "database_name" {
  description = "Name of the Cloud SQL database"
  value       = google_sql_database.main_database.name
}

output "username" {
  description = "Username for the Cloud SQL user"
  value       = google_sql_user.main_user.name
} 