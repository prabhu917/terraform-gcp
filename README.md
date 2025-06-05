# GCP GCS Bucket Terraform Configuration

This Terraform configuration creates a Google Cloud Storage (GCS) bucket with the following features:
- Versioning enabled
- Lifecycle rules (objects older than 30 days will be deleted)
- Uniform bucket-level access
- Force destroy enabled (bucket can be deleted even if not empty)

## Prerequisites

1. Terraform installed (version >= 1.0.0)
2. Google Cloud Platform account
3. Service account key file with appropriate permissions

## Setup Instructions

1. Copy `terraform.tfvars.example` to `terraform.tfvars`:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

2. Edit `terraform.tfvars` and fill in your values:
   - `project_id`: Your GCP project ID
   - `region`: The GCP region where you want to create the bucket
   - `bucket_name`: Your desired bucket name (must be globally unique)
   - `credentials_file`: Path to your service account key file

3. Initialize Terraform:
   ```bash
   terraform init
   ```

4. Review the planned changes:
   ```bash
   terraform plan
   ```

5. Apply the configuration:
   ```bash
   terraform apply
   ```

## Cleanup

To destroy the created resources:
```bash
terraform destroy
```

## Security Note

- Keep your service account key file secure and never commit it to version control
- Consider using environment variables or a secrets manager for sensitive values in production 