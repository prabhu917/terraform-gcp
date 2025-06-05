output "service_account_email" {
  description = "The email of the service account"
  value       = google_service_account.dataproc_sa.email
}

output "service_account_name" {
  description = "The fully qualified name of the service account"
  value       = google_service_account.dataproc_sa.name
}

output "service_account_id" {
  description = "The ID of the service account"
  value       = google_service_account.dataproc_sa.unique_id
}

output "assigned_roles" {
  description = "The list of IAM roles assigned to the service account"
  value       = var.service_account_roles
} 