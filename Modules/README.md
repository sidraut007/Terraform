```
terraform-vpc-project/
├── environments/
│   └── dev/
│       ├── main.tf
│       ├── dev.tfvars
│       └── backend.tf         <-- (optional but recommended)
├── modules/
│   └── vpc/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── versions.tf
```