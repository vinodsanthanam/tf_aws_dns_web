resource "aws_route53_record" "a_record_item" {
  zone_id = "${aws_route53_zone.domain.zone_id}"
  name    = "${element(split(" ", var.aRecords[count.index]),0)}"
  type    = "A"
  ttl     = "${var.ttl}"
  records = ["${element(split(" ", var.aRecords[count.index]),1)}"]
  count   = "${length(var.cnameRecords)}"
}
