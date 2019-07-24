output "instance_eip" {
  value = "${aws_eip.instanceEip.public_ip}"
}