resource "azurerm_service_plan" "service_plan" {
  name = "${var.prefix}-webapp-plan"
  location = var.location
  resource_group_name = var.rg_name
  os_type = var.os
  sku_name = var.sku
  tags = var.common_tags
}

resource "azurerm_linux_web_app" "webapp" {
  name = "${var.prefix}-webapp"
  location = var.location
  resource_group_name = var.rg_name
  service_plan_id = azurerm_service_plan.service_plan.id
  site_config {}
  tags = var.common_tags
  depends_on = [ azurerm_service_plan.service_plan ]
}