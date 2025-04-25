variable "vnet" {
    description = "A map of virtual networks to create"
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
    default = {}
}