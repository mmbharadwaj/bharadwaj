
resource "aws_security_group" "vpc_security_group" {
  vpc_id      = aws_vpc.vpc.id
  name        = var.vpc_security_group_tag_name
  description = var.vpc_security_group_description


  tags = {
    Name = var.vpc_security_group_tag_name
  }

  egress {
    protocol    = var.vpc_security_group_egress_protocol
    cidr_blocks = var.vpc_security_group_egress_cidr_blocks
    from_port   = var.vpc_security_group_egress_from_port
    to_port     = var.vpc_security_group_egress_to_port
    self        = var.vpc_security_group_egress_self

  }

  dynamic "ingress" {
    for_each = var.vpc_security_group_ingress_rules

    content {
      protocol         = ingress.value["protocol"]
      cidr_blocks      = ingress.value["cidr_blocks"]
      from_port        = ingress.value["from_port"]
      to_port          = ingress.value["to_port"]
      self             = ingress.value["self"]
      ipv6_cidr_blocks = ingress.value["ipv6_cidr_blocks"]
      description      = ingress.value["description"]
      prefix_list_ids  = ingress.value["prefix_list_ids"]
    }
  }
}

