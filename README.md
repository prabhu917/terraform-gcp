# GCP Infrastructure as Code

This repository contains Terraform code to provision and manage Google Cloud Platform (GCP) infrastructure.

## Architecture

The infrastructure includes:
- Google Cloud Storage (GCS) bucket
- BigQuery dataset
- Dataproc cluster
- IAM service account and roles
- VPC network
- Cloud SQL instance

## Prerequisites

- Terraform >= 1.0.0
- Google Cloud SDK
- GCP project with billing enabled
- Service account with appropriate permissions

## Directory Structure

```
terraform-gcp/
├── modules/               # Reusable Terraform modules
│   ├── bigquery/         # BigQuery dataset module
│   ├── dataproc/         # Dataproc cluster module
│   ├── gcs/             # GCS bucket module
│   ├── iam/             # IAM service account module
│   ├── network/         # VPC network module
│   └── sql/             # Cloud SQL module
├── environments/         # Environment-specific configurations
│   ├── dev/            # Development environment
│   └── prod/           # Production environment
├── .github/             # GitHub Actions workflows
├── .gitignore          # Git ignore rules
├── versions.tf         # Terraform version constraints
├── providers.tf        # Provider configurations
└── README.md          # This file
```

## Getting Started

1. Copy `terraform.tfvars.example` to `terraform.tfvars`:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Update the variables in `terraform.tfvars` with your values

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Plan the changes:
   ```bash
   terraform plan
   ```

5. Apply the changes:
   ```bash
   terraform apply
   ```

## State Management

The Terraform state is stored in a GCS bucket with the following configuration:
- Bucket: `terraform-sample-bucket-12049`
- Prefix: `terraform-remote-file/state`

## Security

- Sensitive variables are marked as `sensitive` in the configuration
- Service account keys are stored securely and not committed to version control
- All resources are created with least privilege access

## CI/CD

GitHub Actions workflows are configured for:
- Terraform plan on pull requests
- Terraform apply on merge to main branch
- Code formatting and validation

## Contributing

1. Create a new branch for your changes
2. Make your changes
3. Run `terraform fmt` to format your code
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
