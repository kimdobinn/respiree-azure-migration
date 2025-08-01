#VNet
variable "vnet_name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
variable "vnet_address_space" {
  type = list(string)
}

#Subnet
variable "resource_name_prefix" {
  description = "A text prefix using standard dashed case to name VNET resources."
  type        = string
}
variable "public_subnets" {
  description = "List of CIDR blocks to create private subnets."
  type = list(object({
    name           = string
    address_prefix = string
  }))
}
variable "private_subnets" {
  description = "List of CIDR blocks to create public subnets."
  type = list(object({
    name           = string
    address_prefix = string
  }))
}

#DNS
variable "dns_zone_name" {
  description = "The name of the private DNS zone to create."
  type        = string
}





