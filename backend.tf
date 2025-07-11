terraform {
  backend "s3" {
    bucket = "terraform-state-route53-bucket-xyz"
    key    = "route53/dev/terraform.tfstate"
    region = "us-east-2"
  }
}
