resource "azuredevops_area" "areas" {
  for_each = var.areas

  name           = each.value.name
  project_id     = each.value.project_id
  parent_area_id = each.value.parent_area_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

