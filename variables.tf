################################
#### required variables ########
################################

variable "name" {
  type = string
}
variable "resource_group_name" {
  type = string
}
variable "virtual_network_name" {
  type = string
}
variable "address_prefixes" {
  type = list(any)
}

# variable "ip_configuration_name" {
#   type = string
# }
# variable "subnet_id" {
#   type = string
# }
# variable "pvt_ip_allocation" {
#   type = string
# }
# variable "public_ip_address_id" {
#   type = string
# }
# variable "pvt_ip_allocation" {
#   type = string
# }

################################
#### optional variables ########
################################


variable "delegation" {
  type    = any
  default = null
}
variable "private_endpoint_network_policies_enabled" {
  type    = bool
  default = null
}
variable "private_link_service_network_policies_enabled" {
  type    = bool
  default = null
}
variable "service_endpoints" {
  type    = list(any)
  default = null
}
variable "service_endpoint_policy_ids" {
  type    = list(any)
  default = null
}
