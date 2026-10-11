variable "clouddomains_registrations" {
  description = <<EOT
Map of clouddomains_registrations, attributes below
Required:
    - domain_name
    - location
    - contact_settings (block):
        - admin_contact (required, block):
            - email (required)
            - fax_number (optional)
            - phone_number (required)
            - postal_address (required, block):
                - address_lines (optional)
                - administrative_area (optional)
                - locality (optional)
                - organization (optional)
                - postal_code (optional)
                - recipients (optional)
                - region_code (required)
        - privacy (required)
        - registrant_contact (required, block):
            - email (required)
            - fax_number (optional)
            - phone_number (required)
            - postal_address (required, block):
                - address_lines (optional)
                - administrative_area (optional)
                - locality (optional)
                - organization (optional)
                - postal_code (optional)
                - recipients (optional)
                - region_code (required)
        - technical_contact (required, block):
            - email (required)
            - fax_number (optional)
            - phone_number (required)
            - postal_address (required, block):
                - address_lines (optional)
                - administrative_area (optional)
                - locality (optional)
                - organization (optional)
                - postal_code (optional)
                - recipients (optional)
                - region_code (required)
    - yearly_price (block):
        - currency_code (optional)
        - units (optional)
Optional:
    - contact_notices
    - domain_notices
    - labels
    - project
    - dns_settings (block):
        - custom_dns (optional, block):
            - ds_records (optional, block):
                - algorithm (optional)
                - digest (optional)
                - digest_type (optional)
                - key_tag (optional)
            - name_servers (required)
        - glue_records (optional, block):
            - host_name (required)
            - ipv4_addresses (optional)
            - ipv6_addresses (optional)
    - management_settings (block):
        - preferred_renewal_method (optional)
        - transfer_lock_state (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    domain_name     = string
    location        = string
    contact_notices = optional(list(string))
    domain_notices  = optional(list(string))
    labels          = optional(map(string))
    project         = optional(string)
    contact_settings = object({
      admin_contact = object({
        email        = string
        fax_number   = optional(string)
        phone_number = string
        postal_address = object({
          address_lines       = optional(list(string))
          administrative_area = optional(string)
          locality            = optional(string)
          organization        = optional(string)
          postal_code         = optional(string)
          recipients          = optional(list(string))
          region_code         = string
        })
      })
      privacy = string
      registrant_contact = object({
        email        = string
        fax_number   = optional(string)
        phone_number = string
        postal_address = object({
          address_lines       = optional(list(string))
          administrative_area = optional(string)
          locality            = optional(string)
          organization        = optional(string)
          postal_code         = optional(string)
          recipients          = optional(list(string))
          region_code         = string
        })
      })
      technical_contact = object({
        email        = string
        fax_number   = optional(string)
        phone_number = string
        postal_address = object({
          address_lines       = optional(list(string))
          administrative_area = optional(string)
          locality            = optional(string)
          organization        = optional(string)
          postal_code         = optional(string)
          recipients          = optional(list(string))
          region_code         = string
        })
      })
    })
    yearly_price = object({
      currency_code = optional(string)
      units         = optional(string)
    })
    dns_settings = optional(object({
      custom_dns = optional(object({
        ds_records = optional(list(object({
          algorithm   = optional(string)
          digest      = optional(string)
          digest_type = optional(string)
          key_tag     = optional(number)
        })))
        name_servers = list(string)
      }))
      glue_records = optional(list(object({
        host_name      = string
        ipv4_addresses = optional(list(string))
        ipv6_addresses = optional(list(string))
      })))
    }))
    management_settings = optional(object({
      preferred_renewal_method = optional(string)
      transfer_lock_state      = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

