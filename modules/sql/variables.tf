variable "sql_instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "region" {
  description = "The GCP region where the SQL instance will be created"
  type        = string
}

variable "sql_database_version" {
  description = "The database version of the Cloud SQL instance (e.g., MYSQL_8_0, POSTGRES_14)"
  type        = string
  default     = "MYSQL_8_0"
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

variable "project_id" {
  description = "The GCP project ID"
  type        = string
} 