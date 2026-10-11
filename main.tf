resource "google_clouddomains_registration" "clouddomains_registrations" {
  for_each = var.clouddomains_registrations

  domain_name     = each.value.domain_name
  location        = each.value.location
  contact_notices = each.value.contact_notices
  domain_notices  = each.value.domain_notices
  labels          = each.value.labels
  project         = each.value.project

  contact_settings {
    admin_contact {
      email        = each.value.contact_settings.admin_contact.email
      fax_number   = each.value.contact_settings.admin_contact.fax_number
      phone_number = each.value.contact_settings.admin_contact.phone_number
      postal_address {
        address_lines       = each.value.contact_settings.admin_contact.postal_address.address_lines
        administrative_area = each.value.contact_settings.admin_contact.postal_address.administrative_area
        locality            = each.value.contact_settings.admin_contact.postal_address.locality
        organization        = each.value.contact_settings.admin_contact.postal_address.organization
        postal_code         = each.value.contact_settings.admin_contact.postal_address.postal_code
        recipients          = each.value.contact_settings.admin_contact.postal_address.recipients
        region_code         = each.value.contact_settings.admin_contact.postal_address.region_code
      }
    }
    privacy = each.value.contact_settings.privacy
    registrant_contact {
      email        = each.value.contact_settings.registrant_contact.email
      fax_number   = each.value.contact_settings.registrant_contact.fax_number
      phone_number = each.value.contact_settings.registrant_contact.phone_number
      postal_address {
        address_lines       = each.value.contact_settings.registrant_contact.postal_address.address_lines
        administrative_area = each.value.contact_settings.registrant_contact.postal_address.administrative_area
        locality            = each.value.contact_settings.registrant_contact.postal_address.locality
        organization        = each.value.contact_settings.registrant_contact.postal_address.organization
        postal_code         = each.value.contact_settings.registrant_contact.postal_address.postal_code
        recipients          = each.value.contact_settings.registrant_contact.postal_address.recipients
        region_code         = each.value.contact_settings.registrant_contact.postal_address.region_code
      }
    }
    technical_contact {
      email        = each.value.contact_settings.technical_contact.email
      fax_number   = each.value.contact_settings.technical_contact.fax_number
      phone_number = each.value.contact_settings.technical_contact.phone_number
      postal_address {
        address_lines       = each.value.contact_settings.technical_contact.postal_address.address_lines
        administrative_area = each.value.contact_settings.technical_contact.postal_address.administrative_area
        locality            = each.value.contact_settings.technical_contact.postal_address.locality
        organization        = each.value.contact_settings.technical_contact.postal_address.organization
        postal_code         = each.value.contact_settings.technical_contact.postal_address.postal_code
        recipients          = each.value.contact_settings.technical_contact.postal_address.recipients
        region_code         = each.value.contact_settings.technical_contact.postal_address.region_code
      }
    }
  }

  yearly_price {
    currency_code = each.value.yearly_price.currency_code
    units         = each.value.yearly_price.units
  }

  dynamic "dns_settings" {
    for_each = each.value.dns_settings != null ? [each.value.dns_settings] : []
    content {
      dynamic "custom_dns" {
        for_each = dns_settings.value.custom_dns != null ? [dns_settings.value.custom_dns] : []
        content {
          dynamic "ds_records" {
            for_each = custom_dns.value.ds_records != null ? custom_dns.value.ds_records : []
            content {
              algorithm   = ds_records.value.algorithm
              digest      = ds_records.value.digest
              digest_type = ds_records.value.digest_type
              key_tag     = ds_records.value.key_tag
            }
          }
          name_servers = custom_dns.value.name_servers
        }
      }
      dynamic "glue_records" {
        for_each = dns_settings.value.glue_records != null ? dns_settings.value.glue_records : []
        content {
          host_name      = glue_records.value.host_name
          ipv4_addresses = glue_records.value.ipv4_addresses
          ipv6_addresses = glue_records.value.ipv6_addresses
        }
      }
    }
  }

  dynamic "management_settings" {
    for_each = each.value.management_settings != null ? [each.value.management_settings] : []
    content {
      preferred_renewal_method = management_settings.value.preferred_renewal_method
      transfer_lock_state      = management_settings.value.transfer_lock_state
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

