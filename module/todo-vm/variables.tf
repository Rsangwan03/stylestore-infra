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
