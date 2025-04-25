terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 4.0"
        }
    }

    required_version = ">= 1.0.0"
}

provider "azurerm" {
    features {}
    subscription_id = "faaf7cdf-4478-4be0-abff-5a862a19708b"

}
