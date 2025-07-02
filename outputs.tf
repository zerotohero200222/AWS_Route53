output "zone_id" {
  description = "The ID of the created Route 53 hosted zone"
  value       = aws_route53_zone.main.zone_id
}

output "record_fqdn" {
  description = "Fully qualified domain name of the A record"
  value       = aws_route53_record.www.fqdn
}
