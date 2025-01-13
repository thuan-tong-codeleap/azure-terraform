resource "azurerm_resource_group" "rg" {
  name = "${var.prefix}-terraform-rg"
  location = var.location
  tags = var.common_tags
}

module "storage_account" {
  source = "../../modules/storage"
  prefix = var.prefix
  location = var.location
  rg_name = azurerm_resource_group.rg.name
  common_tags = var.common_tags
  account_tier = "Standard"
  account_replication_type = "LRS"
}

module "webapp" {
  source = "../../modules/app-service"
  prefix = var.prefix
  location = var.location
  rg_name = azurerm_resource_group.rg.name
  common_tags = var.common_tags
  os = "Linux"
  sku = "B1"
}