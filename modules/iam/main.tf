resource "google_service_account" "dataproc_sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
  project      = var.project_id
}

# Dynamic IAM bindings based on roles list
resource "google_storage_bucket_iam_member" "gcs_roles" {
  for_each = toset([
    for role in var.service_account_roles :
    role if startswith(role, "roles/storage.")
  ])
  bucket = var.gcs_bucket_name
  role   = each.value
  member = "serviceAccount:${google_service_account.dataproc_sa.email}"
}

resource "google_bigquery_dataset_iam_member" "bq_roles" {
  for_each = toset([
    for role in var.service_account_roles :
    role if startswith(role, "roles/bigquery.")
  ])
  dataset_id = var.bq_dataset_id
  role       = each.value
  member     = "serviceAccount:${google_service_account.dataproc_sa.email}"
}

resource "google_project_iam_member" "project_roles" {
  for_each = toset([
    for role in var.service_account_roles :
    role if !startswith(role, "roles/storage.") && !startswith(role, "roles/bigquery.")
  ])
  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.dataproc_sa.email}"
} 