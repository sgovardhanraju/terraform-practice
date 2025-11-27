resource "aws_security_group" "roboshop_instance" {
  name        = "roboshop-scrict-sg"

egress {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

#block
 dynamic "ingress" {
    for_each = toset(var.ingress_port)
    content{
  from_port         = ingress.value
  to_port           = ingress.value
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
    }
 }
    tags = {
      Name = "roboshop-strict-sg"
    }
}