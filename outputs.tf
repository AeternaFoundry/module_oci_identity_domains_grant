output "identity_domains_grants_id" {
  description = "Map of id values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no id are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_domains_grants_app" {
  description = "Map of app values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no app are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => one(v.app) if v.app != null && length(v.app) > 0 }
}
output "identity_domains_grants_app_entitlement_collection" {
  description = "Map of app_entitlement_collection values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no app_entitlement_collection are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => one(v.app_entitlement_collection) if v.app_entitlement_collection != null && length(v.app_entitlement_collection) > 0 }
}
output "identity_domains_grants_attribute_sets" {
  description = "Map of attribute_sets values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no attribute_sets are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.attribute_sets if v.attribute_sets != null && length(v.attribute_sets) > 0 }
}
output "identity_domains_grants_attributes" {
  description = "Map of attributes values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no attributes are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "identity_domains_grants_authorization" {
  description = "Map of authorization values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no authorization are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "identity_domains_grants_compartment_ocid" {
  description = "Map of compartment_ocid values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no compartment_ocid are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.compartment_ocid if v.compartment_ocid != null && length(v.compartment_ocid) > 0 }
}
output "identity_domains_grants_composite_key" {
  description = "Map of composite_key values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no composite_key are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.composite_key if v.composite_key != null && length(v.composite_key) > 0 }
}
output "identity_domains_grants_delete_in_progress" {
  description = "Map of delete_in_progress values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no delete_in_progress are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.delete_in_progress if v.delete_in_progress != null }
}
output "identity_domains_grants_domain_ocid" {
  description = "Map of domain_ocid values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no domain_ocid are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.domain_ocid if v.domain_ocid != null && length(v.domain_ocid) > 0 }
}
output "identity_domains_grants_entitlement" {
  description = "Map of entitlement values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no entitlement are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => one(v.entitlement) if v.entitlement != null && length(v.entitlement) > 0 }
}
output "identity_domains_grants_grant_mechanism" {
  description = "Map of grant_mechanism values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no grant_mechanism are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.grant_mechanism if v.grant_mechanism != null && length(v.grant_mechanism) > 0 }
}
output "identity_domains_grants_granted_attribute_values_json" {
  description = "Map of granted_attribute_values_json values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no granted_attribute_values_json are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.granted_attribute_values_json if v.granted_attribute_values_json != null && length(v.granted_attribute_values_json) > 0 }
}
output "identity_domains_grants_grantee" {
  description = "Map of grantee values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no grantee are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => one(v.grantee) if v.grantee != null && length(v.grantee) > 0 }
}
output "identity_domains_grants_grantor" {
  description = "Map of grantor values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no grantor are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.grantor if v.grantor != null && length(v.grantor) > 0 }
}
output "identity_domains_grants_idcs_created_by" {
  description = "Map of idcs_created_by values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no idcs_created_by are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.idcs_created_by if v.idcs_created_by != null && length(v.idcs_created_by) > 0 }
}
output "identity_domains_grants_idcs_endpoint" {
  description = "Map of idcs_endpoint values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no idcs_endpoint are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.idcs_endpoint if v.idcs_endpoint != null && length(v.idcs_endpoint) > 0 }
}
output "identity_domains_grants_idcs_last_modified_by" {
  description = "Map of idcs_last_modified_by values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no idcs_last_modified_by are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.idcs_last_modified_by if v.idcs_last_modified_by != null && length(v.idcs_last_modified_by) > 0 }
}
output "identity_domains_grants_idcs_last_upgraded_in_release" {
  description = "Map of idcs_last_upgraded_in_release values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no idcs_last_upgraded_in_release are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.idcs_last_upgraded_in_release if v.idcs_last_upgraded_in_release != null && length(v.idcs_last_upgraded_in_release) > 0 }
}
output "identity_domains_grants_idcs_prevented_operations" {
  description = "Map of idcs_prevented_operations values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no idcs_prevented_operations are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.idcs_prevented_operations if v.idcs_prevented_operations != null && length(v.idcs_prevented_operations) > 0 }
}
output "identity_domains_grants_is_fulfilled" {
  description = "Map of is_fulfilled values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no is_fulfilled are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.is_fulfilled if v.is_fulfilled != null }
}
output "identity_domains_grants_meta" {
  description = "Map of meta values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no meta are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "identity_domains_grants_ocid" {
  description = "Map of ocid values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no ocid are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.ocid if v.ocid != null && length(v.ocid) > 0 }
}
output "identity_domains_grants_resource_type_schema_version" {
  description = "Map of resource_type_schema_version values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no resource_type_schema_version are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.resource_type_schema_version if v.resource_type_schema_version != null && length(v.resource_type_schema_version) > 0 }
}
output "identity_domains_grants_schemas" {
  description = "Map of schemas values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no schemas are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.schemas if v.schemas != null && length(v.schemas) > 0 }
}
output "identity_domains_grants_tags" {
  description = "Map of tags values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no tags are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "identity_domains_grants_tenancy_ocid" {
  description = "Map of tenancy_ocid values across all identity_domains_grants, keyed the same as var.identity_domains_grants except keys with no tenancy_ocid are omitted"
  value       = { for k, v in oci_identity_domains_grant.identity_domains_grants : k => v.tenancy_ocid if v.tenancy_ocid != null && length(v.tenancy_ocid) > 0 }
}

