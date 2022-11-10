variable "cidr_block" {
  description = "AWS VPC CIDR Block"
  type        = string
}

variable "vpc_name" {
  description = "AWS VPC Tag Name"
  type        = string
}

variable "subnet_1_cidr" {
  description = "AWS VPC Subnet"
  type        = string
}

variable "subnet_2_cidr" {
  description = "AWS VPC Subnet"
  type        = string
}

variable "subnet_3_cidr" {
  description = "AWS VPC Subnet"
  type        = string
}

variable "subnet_4_cidr" {
  description = "AWS VPC Subnet"
  type        = string
}


variable "subnet_1_tag_name" {
  description = "AWS VPC Subnet tag name"
  type        = string
}

variable "subnet_2_tag_name" {
  description = "AWS VPC Subnet tag name"
  type        = string
}

variable "subnet_3_tag_name" {
  description = "AWS VPC Subnet tag name"
  type        = string
}

variable "subnet_4_tag_name" {
  description = "AWS VPC Subnet tag name"
  type        = string
}

variable "subnet_1_map_public_ip_on_launch" {
  description = "AWS VPC Subnet map public ip on launch"
  type        = bool
}

variable "subnet_2_map_public_ip_on_launch" {
  description = "AWS VPC Subnet map public ip on launch"
  type        = bool
}

variable "subnet_3_map_public_ip_on_launch" {
  description = "AWS VPC Subnet map public ip on launch"
  type        = bool
}

variable "subnet_4_map_public_ip_on_launch" {
  description = "AWS VPC Subnet map public ip on launch"
  type        = bool
}

variable "internet_gateway_tag_name" {
  description = "AWS Internet Gateway tag name"
  type        = string
}

variable "nat_gateway_tag_name" {
  description = "AWS Nat Gateway tag name"
  type        = string
}

variable "route_table_tag_name" {
  description = "AWS VPC Route table tag name"
  type        = string
}

variable "route_table_private_1_tag_name" {
  description = "AWS VPC Route table tag name"
  type        = string
}

variable "route_table_private_2_tag_name" {
  description = "AWS VPC Route table tag name"
  type        = string
}

variable "route_table_default_tag_name" {
  description = "AWS VPC Route table tag name"
  type        = string
}


variable "vpc_security_group_tag_name" {
  description = "AWS VPC Security Group"
  type        = string
}

variable "vpc_security_group_description" {
  description = "AWS VPC Security Group description"
  type        = string
}
variable "vpc_security_group_egress_cidr_blocks" {
  description = "AWS Security Egress CIDR block"
  type        = list(any)
}
variable "vpc_security_group_egress_from_port" {
  description = "AWS Security Egress from port"
  type        = number
}
variable "vpc_security_group_egress_protocol" {
  description = "AWS Security Egress protocol"
  type        = number
}
variable "vpc_security_group_egress_to_port" {
  description = "AWS Security Egress to port"
  type        = number
}
variable "vpc_security_group_egress_self" {
  description = "AWS Security Egress self"
  type        = bool
}

variable "vpc_security_group_ingress_self" {
  description = "AWS Security ingress self"
  type        = bool
}

variable "vpc_security_group_ingress_ipv6_cidr_blocks" {
  description = "AWS Security Group Ingress IPv6 CIDR Blocks"
  type        = list(any)
}

variable "vpc_security_group_ingress_rules" {
  type = list(object({
    from_port        = number
    to_port          = number
    cidr_blocks      = list(string)
    protocol         = string
    self             = string
    prefix_list_ids  = list(string)
    ipv6_cidr_blocks = list(string)
    description      = string
  }))
}


variable key_name {
    type = string
  }
variable "namespace" {
    type = string
  }

