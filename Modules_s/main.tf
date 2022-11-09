# terraform {
#   backend "s3" {
#     bucket         = "cala-jenkins"
#     key            = "test/terraform.tfstate" # A unique key for this project. The same value used for tfStack in variables-tags.tf
#     region         = "us-west-2"
#     #dynamodb_table = "terraform-operations-state-locking"
#   }
# }

module "vpc" {
  source = "./vpc"

  cidr_block = var.cidr_block
  vpc_name   = var.vpc_name

  subnet_1_cidr                    = var.subnet_1_cidr
  subnet_2_cidr                    = var.subnet_2_cidr
  subnet_1_tag_name                = var.subnet_1_tag_name
  subnet_2_tag_name                = var.subnet_2_tag_name
  subnet_1_map_public_ip_on_launch = var.subnet_1_map_public_ip_on_launch
  subnet_2_map_public_ip_on_launch = var.subnet_2_map_public_ip_on_launch
  subnet_3_map_public_ip_on_launch = var.subnet_3_map_public_ip_on_launch
  subnet_4_map_public_ip_on_launch = var.subnet_4_map_public_ip_on_launch
  subnet_3_cidr                    = var.subnet_3_cidr
  subnet_4_cidr                    = var.subnet_4_cidr
  subnet_3_tag_name                = var.subnet_3_tag_name
  subnet_4_tag_name                = var.subnet_4_tag_name

  internet_gateway_tag_name      = var.internet_gateway_tag_name
  nat_gateway_tag_name           = var.nat_gateway_tag_name
  route_table_tag_name           = var.route_table_tag_name
  route_table_private_1_tag_name = var.route_table_private_1_tag_name
  route_table_private_2_tag_name = var.route_table_private_2_tag_name
  route_table_default_tag_name   = var.route_table_default_tag_name

  vpc_security_group_tag_name    = var.vpc_security_group_tag_name
  vpc_security_group_description = var.vpc_security_group_description

  vpc_security_group_egress_protocol    = var.vpc_security_group_egress_protocol
  vpc_security_group_egress_cidr_blocks = var.vpc_security_group_egress_cidr_blocks
  vpc_security_group_egress_from_port   = var.vpc_security_group_egress_from_port
  vpc_security_group_egress_to_port     = var.vpc_security_group_egress_to_port
  vpc_security_group_egress_self        = var.vpc_security_group_egress_self

  vpc_security_group_ingress_rules            = var.vpc_security_group_ingress_rules
  vpc_security_group_ingress_self             = var.vpc_security_group_ingress_self
  vpc_security_group_ingress_ipv6_cidr_blocks = var.vpc_security_group_ingress_ipv6_cidr_blocks



}