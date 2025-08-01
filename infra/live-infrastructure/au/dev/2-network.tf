module "vnet" {
  source = "../../../modules/common/vnet"
  #Azure location = AWS region
  location = var.location

  resource_name_prefix = local.resource_name_prefix
  #Azure address_space = AWS CIDR block
  vnet_address_space = var.vnet_address_space

  vnet_name = "${local.resource_name_prefix}-vnet"
  resource_group_name = var.resource_group_name



  public_subnets = [
    {
      name           = "web"
      address_prefix = var.web_address_space_1
    },
    {
      name           = "web-alt"
      address_prefix = var.web_address_space_2
    }
  ]

  private_subnets = [
    {
      name           = "app"
      address_prefix = var.app_address_space
    },
    {
      name           = "db_main"
      address_prefix = var.db_address_space_1
    },
    {
      name           = "db_alt"
      address_prefix = var.db_address_space_2
    }
  ]
}
