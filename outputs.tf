output "clouddomains_registrations_id" {
  description = "Map of id values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no id are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clouddomains_registrations_contact_notices" {
  description = "Map of contact_notices values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no contact_notices are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.contact_notices if v.contact_notices != null && length(v.contact_notices) > 0 }
}
output "clouddomains_registrations_contact_settings" {
  description = "Map of contact_settings values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no contact_settings are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => one(v.contact_settings) if v.contact_settings != null && length(v.contact_settings) > 0 }
}
output "clouddomains_registrations_create_time" {
  description = "Map of create_time values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no create_time are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "clouddomains_registrations_dns_settings" {
  description = "Map of dns_settings values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no dns_settings are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => one(v.dns_settings) if v.dns_settings != null && length(v.dns_settings) > 0 }
}
output "clouddomains_registrations_domain_name" {
  description = "Map of domain_name values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no domain_name are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "clouddomains_registrations_domain_notices" {
  description = "Map of domain_notices values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no domain_notices are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.domain_notices if v.domain_notices != null && length(v.domain_notices) > 0 }
}
output "clouddomains_registrations_effective_labels" {
  description = "Map of effective_labels values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no effective_labels are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "clouddomains_registrations_expire_time" {
  description = "Map of expire_time values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no expire_time are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "clouddomains_registrations_issues" {
  description = "Map of issues values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no issues are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.issues if v.issues != null && length(v.issues) > 0 }
}
output "clouddomains_registrations_labels" {
  description = "Map of labels values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no labels are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "clouddomains_registrations_location" {
  description = "Map of location values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no location are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.location if v.location != null && length(v.location) > 0 }
}
output "clouddomains_registrations_management_settings" {
  description = "Map of management_settings values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no management_settings are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => one(v.management_settings) if v.management_settings != null && length(v.management_settings) > 0 }
}
output "clouddomains_registrations_name" {
  description = "Map of name values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no name are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "clouddomains_registrations_project" {
  description = "Map of project values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no project are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.project if v.project != null && length(v.project) > 0 }
}
output "clouddomains_registrations_register_failure_reason" {
  description = "Map of register_failure_reason values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no register_failure_reason are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.register_failure_reason if v.register_failure_reason != null && length(v.register_failure_reason) > 0 }
}
output "clouddomains_registrations_state" {
  description = "Map of state values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no state are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.state if v.state != null && length(v.state) > 0 }
}
output "clouddomains_registrations_supported_privacy" {
  description = "Map of supported_privacy values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no supported_privacy are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.supported_privacy if v.supported_privacy != null && length(v.supported_privacy) > 0 }
}
output "clouddomains_registrations_terraform_labels" {
  description = "Map of terraform_labels values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no terraform_labels are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "clouddomains_registrations_yearly_price" {
  description = "Map of yearly_price values across all clouddomains_registrations, keyed the same as var.clouddomains_registrations except keys with no yearly_price are omitted"
  value       = { for k, v in google_clouddomains_registration.clouddomains_registrations : k => one(v.yearly_price) if v.yearly_price != null && length(v.yearly_price) > 0 }
}

