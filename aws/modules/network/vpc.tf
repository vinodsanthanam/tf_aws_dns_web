locals {
  enable_dns_hostnames = "${contains(list("true"), var.enable_dns_hostnames)}"
}

resource "aws_vpc" "vpc" {
  cidr_block = "${var.cidr_vpc}"
  enable_dns_hostnames = "${local.enable_dns_hostnames}"
  tags {
    "Environment" = "${ var.environment_tag}"
  }
}