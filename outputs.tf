output "areas_id" {
  description = "Map of id values across all areas, keyed the same as var.areas"
  value       = { for k, v in azuredevops_area.areas : k => v.id }
}
output "areas_name" {
  description = "Map of name values across all areas, keyed the same as var.areas"
  value       = { for k, v in azuredevops_area.areas : k => v.name }
}
output "areas_parent_area_id" {
  description = "Map of parent_area_id values across all areas, keyed the same as var.areas"
  value       = { for k, v in azuredevops_area.areas : k => v.parent_area_id }
}
output "areas_path" {
  description = "Map of path values across all areas, keyed the same as var.areas"
  value       = { for k, v in azuredevops_area.areas : k => v.path }
}
output "areas_project_id" {
  description = "Map of project_id values across all areas, keyed the same as var.areas"
  value       = { for k, v in azuredevops_area.areas : k => v.project_id }
}

