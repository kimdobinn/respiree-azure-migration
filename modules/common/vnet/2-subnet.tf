resource "azurerm_subnet" "dynamic_public_subnets" {
  for_each             = { for idx, subnet in var.public_subnets : idx => subnet }

  #Can't have tags in Azure subnets, so we use the name as a tag
  name                 = "${var.resource_name_prefix}-${each.value.name}"

  #Azure virtual_network_name = AWS vpc_id
  virtual_network_name = azurerm_virtual_network.this.name

  #Azure address_prefix = AWS CIDR block
  address_prefixes     = each.value.address_prefix

  resource_group_name  = var.resource_group_name

  #In Azure, we can not set Availability Zone for subnets. 
  #Subnets automatically follow VNet's Availability Zone.
}

resource "azurerm_subnet" "dynamic_private_subnets" {
  for_each             = { for idx, subnet in var.private_subnets : idx => subnet }
  name                 = "${var.resource_name_prefix}-${each.value.name}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [each.value.address_prefix]
}