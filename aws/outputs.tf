output "name_servers" {
  value = "${module.dnsModule.domain_name_servers}"
}

output "elastic_ip" {
  value = "${module.instanceModule.instance_eip}"
}
