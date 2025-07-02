variable "region" {
  description = "The AWS region to deploy to"
  type        = string
}

variable "domain_name" {
  description = "The domain name for Route 53 hosted zone"
  type        = string
}

variable "record_ip" {
  description = "IP address to use in the A record"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, test, prod)"
  type        = string
}
