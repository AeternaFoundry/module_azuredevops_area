output "areas_id" {
  description = "Map of id values across all areas, keyed the same as var.areas except keys with no id are omitted"
  value       = { for k, v in azuredevops_area.areas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "areas_name" {
  description = "Map of name values across all areas, keyed the same as var.areas except keys with no name are omitted"
  value       = { for k, v in azuredevops_area.areas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "areas_parent_area_id" {
  description = "Map of parent_area_id values across all areas, keyed the same as var.areas except keys with no parent_area_id are omitted"
  value       = { for k, v in azuredevops_area.areas : k => v.parent_area_id if v.parent_area_id != null }
}
output "areas_path" {
  description = "Map of path values across all areas, keyed the same as var.areas except keys with no path are omitted"
  value       = { for k, v in azuredevops_area.areas : k => v.path if v.path != null && length(v.path) > 0 }
}
output "areas_project_id" {
  description = "Map of project_id values across all areas, keyed the same as var.areas except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_area.areas : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

