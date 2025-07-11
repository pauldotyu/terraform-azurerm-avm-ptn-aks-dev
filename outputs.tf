# Module owners should include the full resource via a 'resource' output
# https://azure.github.io/Azure-Verified-Modules/specs/terraform/#id-tffr2---category-outputs---additional-terraform-outputs
output "resource" {
  description = "This is the full output for the resource."
  sensitive   = true
  value       = azurerm_kubernetes_cluster.this
}

output "resource_id" {
  description = "The `azurerm_kubernetes_cluster`'s resource id."
  value       = azurerm_kubernetes_cluster.this.id
}

output "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster."
  value       = azurerm_kubernetes_cluster.this.name
}

output "container_registry_resource_id" {
  description = "The `azurerm_container_registry`'s resource id."
  value       = azurerm_container_registry.this.login_server
}

output "container_registry_login_server" {
  description = "The login server of the container registry."
  value       = azurerm_container_registry.this.login_server
}
