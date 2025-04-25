variable "vms" {
    type = map(object({
        name                 = string
        resource_group_name  = string
        location             = string
        network_interface_id = string
        vnet_name            = string
        subnet_name          = string
        public_ip_enabled    = bool
    }))
}

variable "admin_username" {
    type        = string
    description = "The admin username for the VM."
  
}

variable "admin_password" {
    type        = string
    description = "The admin password for the VM."
    sensitive   = true
  
}