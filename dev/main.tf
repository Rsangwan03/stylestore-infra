variable "rg_name" {
    type = map(object({
      name = string
      location = string
    }))
}
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


variable "vnet" {
    type = map(object({
        name          = string
        address_space = list(string)
        location      = string
        resource_group_name = string
        subnets       = list(object({
            name           = string
            address_prefix = string
        }))
    }))
  
}

module "rgs" {
    source = "../module/todo-rg"
    rg_name = var.rg_name
  
}

module "vnets" {
    source = "../module/todo-vnet"
    vnet = var.vnet
    depends_on = [ module.rgs ]
}
module "vms" {
    source = "../module/todo-vm"
    vms = var.vms
    depends_on = [ module.vnets ]
  
}

