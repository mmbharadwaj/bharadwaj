cidr_block                                  = "10.21.0.0/16"
vpc_name                                    = "jenkins-vpc"
subnet_1_cidr                               = "10.21.0.0/20"
subnet_2_cidr                               = "10.21.16.0/20"
subnet_3_cidr                               = "10.21.128.0/20"
subnet_4_cidr                               = "10.21.144.0/20"
subnet_1_tag_name                           = "ca-subnet-public1-us-west-2a"
subnet_2_tag_name                           = "ca-subnet-public2-us-west-2b"
subnet_3_tag_name                           = "ca-subnet-private1-us-west-2a"
subnet_4_tag_name                           = "ca-subnet-private2-us-west-2b"
subnet_1_map_public_ip_on_launch            = true
subnet_2_map_public_ip_on_launch            = true
subnet_3_map_public_ip_on_launch            = false
subnet_4_map_public_ip_on_launch            = false
internet_gateway_tag_name                   = "ca-igw"
nat_gateway_tag_name                        = "ngw"
route_table_tag_name                        = "ca-rtb-public"
route_table_private_1_tag_name              = "ca-rtb-private2-us-west-2b"
route_table_private_2_tag_name              = "ca-rtb-private1-us-west-2a"
route_table_default_tag_name                = null
vpc_security_group_tag_name                 = null
vpc_security_group_description              = "Allow traffic to Ci servers"
vpc_security_group_egress_cidr_blocks       = ["0.0.0.0/0"]
vpc_security_group_egress_from_port         = 0
vpc_security_group_egress_protocol          = -1
vpc_security_group_egress_to_port           = 0
vpc_security_group_egress_self              = false
vpc_security_group_ingress_ipv6_cidr_blocks = ["::/0"]
vpc_security_group_ingress_self             = false
vpc_security_group_ingress_rules = [
  {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    description      = ""
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  },

  {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    description      = ""
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  },

]
