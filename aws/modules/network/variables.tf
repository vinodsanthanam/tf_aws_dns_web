variable "access_key" {
    description = "Access Key for login"
}
variable "secret_key" {
    description = "Secret Key for the account"
}
variable "region" {
    description = "AWS Region"
}
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
}
variable "environment_tag" {
  description = "Environment tag"
}
variable "enable_dns_hostnames" {
  description = "Boolean to indicate if dns hostname should be enabled on the vpc"
}
