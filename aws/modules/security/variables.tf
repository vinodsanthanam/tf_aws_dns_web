variable "availability_zone" {
  description = "availability zone to create subnet"
}
variable "vpc_id" {
  description = "VPC ID for the setup"
}
variable "access_key" {
    description = "Access Key for login"
}
variable "secret_key" {
    description = "Secret Key for the account"
}
variable "region" {
    description = "AWS Region"
}
variable "environment_tag" {
  description = "Environment tag"
}