variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "physical location"
  type        = string
  default     = "East US"
}
