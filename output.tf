output "public_ip_address" {
  description = "Public IP address of each VM"
  value = {
    for key, pip in azurerm_public_ip.public_ip :
    key => pip.ip_address
  }
}

output "vm_public_ips" {
  value = {
    for vm, nic in azurerm_network_interface.nic :
    vm => azurerm_public_ip.public_ip[vm].ip_address
  }
}

output "admin_username" {
  description = "The administrator username."
  value       = var.admin_username
}

output "admin_password" {
  description = "The administrator password (sensitive)."
  value       = var.admin_password
  sensitive   = true
}