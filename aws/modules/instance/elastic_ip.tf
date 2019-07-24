resource "aws_eip" "instanceEip" {
  vpc       = true
  instance  = "${aws_instance.instance.id}"
  tags {
    "Environment" = "${var.environment_tag}"
  }
}