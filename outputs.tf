output "webapp_url"{
    description = "The URL of the example Linux web app"
    value = azurerm_linux_web_app.webapp.default_hostname
}

output "storage_account_id" {
  description = "The ID of the storage account resource"
  value = azurerm_storage_account.storage_account.id
}