## 🌐 Terraform Route53 DNS Management

This repository automates the provisioning of [AWS Route53](https://aws.amazon.com/route53/) resources using [Terraform](https://www.terraform.io/) and GitHub Actions. It supports structured environments (e.g., `dev`, `uat`, `prod`) with a remote S3 backend for state management.

---

### 🚀 Features

* ✅ Automated Route53 zone and DNS record creation
* 🪣 Remote state backend using encrypted versioned S3
* 🔐 Secure secrets management via GitHub Secrets
* ✅ Manual approval step for apply (environment-based)
* 📦 Modular environment support: Dev, UAT, Prod
* 💰 Cost estimation summary (based on DNS pricing)
* 🧪 CI/CD integrated with GitHub Actions

---

### 📦 Prerequisites

Before using this repository, ensure the following:

* AWS account with IAM access
* Terraform CLI (`>= 1.3.0`)
* GitHub Secrets configured:

  * `AWS_ACCESS_KEY_ID`
  * `AWS_SECRET_ACCESS_KEY`

---

### 📥 Setup Instructions

1. **Clone this repo**

   ```bash
   git clone https://github.com/your-org/terraform-route53-dns.git
   cd terraform-route53-dns
   ```

2. **Configure your environment**

   Modify the files under `environments/` to match your AWS settings.

3. **Create the backend S3 bucket (manually or automatically)**

   * The GitHub Action auto-creates the bucket if it doesn't exist.

4. **Push your code to `main` branch**

   The workflow will automatically:

   * Initialize Terraform
   * Plan changes
   * Upload plan as an artifact
   * Wait for manual approval for apply

---

### 🔁 GitHub Actions Workflow

This repository includes a workflow to:

* Automatically run `terraform plan` on every push to `main`
* Display an estimated cost breakdown
* Apply changes after manual approval via GitHub Environments

---

### 📘 Example Use Case

This project is ideal for:

* Hosting domain records in Route53
* Managing records like `A`, `CNAME`, `TXT`, etc.
* Automating DNS updates per environment using GitOps

---

### 🧼 Cleanup

To delete the Route53 resources:

* Run `terraform destroy -var-file=environments/dev.tfvars` locally
* Or create a `destroy` branch/workflow as part of CI/CD

---

### 🔒 Security Notes

* No credentials are stored in code
* All AWS access keys must be stored in GitHub Secrets
* S3 backend is encrypted and versioned

---






