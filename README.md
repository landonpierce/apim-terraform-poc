# Overview

This repository demonstrates how to deploy Azure API Management operations and policies using terraform. You may store policies in the `api_policies` folder (Recommended), or pass them in as strings using terraform variables. This example creates a simple "orders" API with 4 REST CRUD operations. There is only one policy applied to the GET policy, but you can add more in the `main.tf` file.

## To Use:

Dependencies:
- Terraform
- Azure CLI

1. Clone repo 
2. Open a terminal window and CD to the root project directory
3. Run `terraform plan -out plan.tfplan`
4. Review the plan
5. To apply, run `terraform apply plan.tfplan`