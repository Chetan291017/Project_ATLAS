variable "location" {
  description = "Azure region to deploy resources"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vm_names" {
  description = "List of VM names to deploy"
  type        = list(string)
  
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
  sensitive   = true
}


