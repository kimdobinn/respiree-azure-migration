resource "azurerm_private_dns_zone" "this" {
  #name must end with ".postgres.database.azure.com"
  name                = var.dns_zone_name 
  resource_group_name = var.resource_group_name
}