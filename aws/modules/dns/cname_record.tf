resource "aws_route53_record" "cname_record_item" {
  zone_id = "${aws_route53_zone.domain.zone_id}"
  name    = "${element(split(" ", var.cnameRecords[count.index]),0)}"
  type    = "CNAME"
  ttl     = "${var.ttl}"
  records = ["${element(split(" ", var.cnameRecords[count.index]),1)}"]
  count   = "${length(var.cnameRecords)}"
}
