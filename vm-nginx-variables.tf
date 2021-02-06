################################
## Azure Nginx VM - Variables ##
################################

variable "nginx_vm_size" {
  type        = string
  description = "Size (SKU) of the virtual machine to create"
}

variable "nginx_admin_username" {
  description = "Username for Virtual Machine administrator account"
  type        = string
  default     = ""
}

variable "nginx_admin_password" {
  description = "Password for Virtual Machine administrator account"
  type        = string
  default     = ""
}
