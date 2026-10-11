resource "oci_identity_domains_grant" "identity_domains_grants" {
  for_each = var.identity_domains_grants

  grant_mechanism               = each.value.grant_mechanism
  idcs_endpoint                 = each.value.idcs_endpoint
  schemas                       = each.value.schemas
  attribute_sets                = each.value.attribute_sets
  attributes                    = each.value.attributes
  authorization                 = each.value.authorization
  granted_attribute_values_json = each.value.granted_attribute_values_json
  ocid                          = each.value.ocid
  resource_type_schema_version  = each.value.resource_type_schema_version

  grantee {
    type  = each.value.grantee.type
    value = each.value.grantee.value
  }

  dynamic "app" {
    for_each = each.value.app != null ? [each.value.app] : []
    content {
      value = app.value.value
    }
  }

  dynamic "app_entitlement_collection" {
    for_each = each.value.app_entitlement_collection != null ? [each.value.app_entitlement_collection] : []
    content {
      value = app_entitlement_collection.value.value
    }
  }

  dynamic "entitlement" {
    for_each = each.value.entitlement != null ? [each.value.entitlement] : []
    content {
      attribute_name  = entitlement.value.attribute_name
      attribute_value = entitlement.value.attribute_value
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
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

