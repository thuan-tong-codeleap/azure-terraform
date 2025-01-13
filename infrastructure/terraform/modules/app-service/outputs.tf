output "webapp_url"{
    description = "The URL of the example Linux web app"
    value = azurerm_linux_web_app.webapp.default_hostname
}