variable "identity_domains_grants" {
  description = <<EOT
Map of identity_domains_grants, attributes below
Required:
    - grant_mechanism
    - idcs_endpoint
    - schemas
    - grantee (block):
        - type (required)
        - value (required)
Optional:
    - attribute_sets
    - attributes
    - authorization
    - granted_attribute_values_json
    - ocid
    - resource_type_schema_version
    - app (block):
        - value (required)
    - app_entitlement_collection (block):
        - value (required)
    - entitlement (block):
        - attribute_name (required)
        - attribute_value (required)
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    grant_mechanism               = string
    idcs_endpoint                 = string
    schemas                       = list(string)
    attribute_sets                = optional(list(string))
    attributes                    = optional(string)
    authorization                 = optional(string)
    granted_attribute_values_json = optional(string)
    ocid                          = optional(string)
    resource_type_schema_version  = optional(string)
    grantee = object({
      type  = string
      value = string
    })
    app = optional(object({
      value = string
    }))
    app_entitlement_collection = optional(object({
      value = string
    }))
    entitlement = optional(object({
      attribute_name  = string
      attribute_value = string
    }))
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

