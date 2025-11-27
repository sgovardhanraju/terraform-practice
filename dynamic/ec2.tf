resource "aws_instance" "terraform" {
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = local.ec2_tags
}

resource "aws_security_group" "allow_all" {
         name = "${local.common_name}-allow_all"

egress {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  
}
 ingress {
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
   tags = merge (
        var.common_tags,
        {
            Name = "${local.common_name}-allow-all"
        }
    )  
}