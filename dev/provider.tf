terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.0"
        }
    
    }

    required_version = ">= 1.0.0"

    backend "azurerm" {
    storage_account_name = "agent12st"
    container_name       = "stylestore-container"
    key                  = "dev.terraform.tfstate"
    resource_group_name = "agentrg"
   }
}

provider "azurerm" {
    features {}
    subscription_id = "faaf7cdf-4478-4be0-abff-5a862a19708b"

}
