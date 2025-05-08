```
terraform-vpc-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars             <-- default vars (optional)
├── dev.tfvars                   <-- for dev workspace
├── staging.tfvars               <-- for staging workspace
├── prod.tfvars                  <-- for prod workspace
├── backend.tf                   <-- remote state backend (e.g., S3)
├── versions.tf                  <-- provider versions
```