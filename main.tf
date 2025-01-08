resource "azurerm_resource_group" "rg" {
  name = "thuan-terraform-rg"
  location = var.location
  tags = var.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name = "thuanterraform2025"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  account_tier = "Standard"
  account_replication_type = "LRS"
  tags = var.common_tags
}

resource "azurerm_service_plan" "service_plan" {
  name = "thuan-webapp-plan"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type = "Linux"
  sku_name = "B1"
  tags = var.common_tags
}

resource "azurerm_linux_web_app" "webapp" {
  name = "thuan-webapp"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id = azurerm_service_plan.service_plan.id
  site_config {}
  tags = var.common_tags
}