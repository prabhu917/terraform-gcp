resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  project                 = var.project_id
  auto_create_subnetworks = false # Best practice to create subnets explicitly

  # Optional: Add description
  # description = "VPC network for the project"

  # Optional: Add routing mode
  # routing_mode = "GLOBAL" # or "REGIONAL"
} 