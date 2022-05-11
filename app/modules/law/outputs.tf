output "location" {
  description = "Location"
  value       = azurerm_log_analytics_workspace.bcp_la.location
}

output "name" {
  description = "Name"
  value       = azurerm_log_analytics_workspace.bcp_la.name
}
