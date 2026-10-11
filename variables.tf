variable "zpr_configurations" {
  description = <<EOT
Map of zpr_configurations, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - freeform_tags
    - zpr_status
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    zpr_status     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

