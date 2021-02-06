#############################
## Azure Nginx VM - Output ##
#############################

output "nginx_vm_name" {
  description = "Virtual Machine name"
  value       = azurerm_linux_virtual_machine.nginx-vm.name
}

output "nginx_vm_ip_address" {
  description = "Virtual Machine IP Address"
  value       = azurerm_public_ip.nginx-vm-ip.ip_address
}

output "nginx_vm_admin_username" {
  description = "Administrator Username for the Virtual Machine"
  value       = var.nginx_admin_username
  #sensitive   = true
}

output "nginx_vm_admin_password" {
  description = "Administrator Password for the Virtual Machine"
  value       = random_password.nginx-vm-password.result
  #sensitive   = true
}

