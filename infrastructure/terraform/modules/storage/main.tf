resource "azurerm_storage_account" "storage_account" {
  name = "${var.prefix}storageaccount"
  location = var.location
  resource_group_name = var.rg_name
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.common_tags
} 