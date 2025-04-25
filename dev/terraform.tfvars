rg_name = {
  "rg1" = {
    name = "stylestore-rg"
    location = "eastus"
  }
}

vnet = {
  "vnet1" = {
    name = "stylestore-vnet"
    address_space = ["10.0.0.0/16"]
    location = "eastus"
    resource_group_name = "stylestore-rg"
    subnets = [
      {
        name = "stylestore-backendsubnet-auth"
            address_prefix = "10.0.2.0/24"
          },
          {
            name = "stylestore-frontendsubnet"
            address_prefix = "10.0.1.0/24"
          },
          {
            name = "stylestore-backendsubnet-order"
            address_prefix = "10.0.3.0/24"
          }
        ]
      }
    }

vms = {
  "vm1" = {
    name = "frontend-vm"
    resource_group_name = "stylestore-rg"
    location = "eastus"
    network_interface_id = "frontend-nic"
    vnet_name = "stylestore-vnet"
    subnet_name = "stylestore-frontendsubnet"
    public_ip_enabled = true
  }
  "vm2" = {
    name = "auth-vm"
    resource_group_name = "stylestore-rg"
    location = "eastus"
    network_interface_id = "auth-nic"
    vnet_name = "stylestore-vnet"
    subnet_name = "stylestore-backendsubnet-auth"
    public_ip_enabled = true
  }
  "vm3" = {
    name = "order-vm"
    resource_group_name = "stylestore-rg"
    location = "eastus"
    network_interface_id = "order-nic"
    vnet_name = "stylestore-vnet"
    subnet_name = "stylestore-backendsubnet-order"
    public_ip_enabled = true
  }
}