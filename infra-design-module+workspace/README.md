```
my_infra_design/
├── modules/                        # Reusable modules
│   ├── vpc/                        
│   ├── ec2/
│   └── key_pair/
│
├── envs/                           # Environment-specific configs
│   ├── main.tf                     # Shared Terraform config for all workspaces
│   ├── backend.tf                  # S3 + DynamoDB backend, workspace-dependent state file
│   ├── terraform.tfvars            # Optional: Default variable values (if needed)
│   ├── variables.tf                # Variable definitions
│   ├── dev.tfvars                  # Environment-specific variables for dev
│   └── prod.tfvars                 # Environment-specific variables for prod
│
├── terraform.tfvars                # Default vars (optional, can be overridden by env-specific tfvars)
├── versions.tf                     # Required Terraform & provider versions
└── README.md


```

```
FROM ENV DIRECTORY:
        
        cd infra_design/env

        terraform init

        terraform workspace new dev

        terraform plan -var-file="dev.tfvars"

        terraform apply -var-file="dev.tfvars"

 ----------------------------------------------------
        
        terraform workspace new prod

        terraform plan -var-file="prod.tfvars"

        terraform apply -var-file="prod.tfvars"
```