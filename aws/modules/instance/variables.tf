variable "access_key" {
    description = "Access Key for login"
}
variable "secret_key" {
    description = "Secret Key for the account"
}
variable "region" {
    description = "AWS Region"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
}
variable "public_key_path" {
  description = "Public key path"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
}
variable "environment_tag" {
  description = "Environment tag"
}
variable "subnet_public_id" {
  description = "Subnet ID"
}
variable "security_group_ids" {
  type = "list"
  description = "Security groups to associate with the subnet"
}
