resource "oci_zpr_configuration" "zpr_configurations" {
  for_each = var.zpr_configurations

  compartment_id = each.value.compartment_id
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  zpr_status     = each.value.zpr_status

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

