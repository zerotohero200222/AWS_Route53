# AWS_Route53
---

# 🚀 Route 53 Deployment with Terraform and GitHub Actions

This project demonstrates how to automate the deployment and destruction of **AWS Route 53** DNS resources using **Terraform** and **GitHub Actions**. The setup follows **infrastructure-as-code (IaC)** best practices and provides a reusable and environment-specific deployment pattern.

---


##  Key Features

###  Terraform for AWS Infrastructure

* Uses **Terraform** to manage Route 53 hosted zones and DNS records.
* Configurations are **environment-specific**, defined through the `variables.tfvars` file.

###  GitHub Actions CI/CD

* Automates Terraform actions (`apply` ) using GitHub Actions workflows.
* Triggered **manually** through GitHub UI with a selectable input for either deployment or destruction.
* Uses **AWS credentials stored securely** in GitHub Secrets.
* Supports dynamic resource provisioning and environment-based configurations.

---

##  How It Works

###  Terraform Configuration

* The configuration includes reusable resource definitions such as:

  * Route 53 hosted zones.
  * A-record or CNAME DNS entries.
  * Dynamic naming using `random_string` or `random_pet` resources.
* Variables are defined in `variables.tf` and values set in `variables.tfvars` for flexibility.

###  CI/CD Workflow

The GitHub Actions workflow performs the following:

1. **Checkout Code**
   Pulls your repository contents for the workflow to access.

2. **Setup Terraform**
   Uses the official Terraform GitHub Action to install and initialize Terraform.

3. **Authenticate with AWS**
   Authenticates with AWS using credentials stored in GitHub Secrets:

   * `AWS_ACCESS_KEY_ID`
   * `AWS_SECRET_ACCESS_KEY`

4. **Terraform Init**
   Initializes Terraform and installs required provider plugins.

5. **Terraform Plan (Apply)**
   Generates an execution plan if `apply` is selected.

6. **Terraform Apply**
   Applies the plan and deploys Route 53 infrastructure.
---

## 🛠 Setup Guide

### 1. Pre-requisites

* [Terraform CLI](https://www.terraform.io/downloads)
* AWS account with Route 53 permissions
* GitHub repository

### 2. GitHub Secrets

In your GitHub repository, navigate to **Settings → Secrets and variables → Actions**, and add:

* `AWS_ACCESS_KEY_ID`
* `AWS_SECRET_ACCESS_KEY`

### 3. Modify `variables.tfvars`

Update your environment-specific values like:

```hcl
environment = "dev"
domain_name = "example.com"
record_name = "app"
record_type = "A"
```

### 4. Run Workflow

1. Go to **Actions** tab in your GitHub repo.
2. Select **"Terraform Deploy ** workflow.
3. Click **"Run workflow"**.
4. Choose  `apply` from the dropdown and run it.

---

##  Environments Support

You can easily create separate configurations for environments like:

* **Development** (`dev`)
* **Testing** (`test`)
* **Production** (`prod`)

Each environment can have its own `.tfvars` file and tagging conventions.

---




