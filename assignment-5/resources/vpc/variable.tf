variable "env" {
  type        = string
  description = "environment name"
}
variable "region" {
  description = "region name"
}

variable "vpc_cidr_block" {
  description = "cidr block of vpc"
  type        = list
}

variable "public_subnet" {
  description = "public subnet name"
  type        = list
}


variable "public_subnet_cidr" {
  description = "public subnet cidr"
  type        = list
}

variable "az" {
  description = "avalability zones names"
  type        = list
}

variable "public_subnet_map_ip" {
  description = "specifying subnets to private or public"
  type        = list
}


variable "ig_name" {
  description = "internet gateway name"
  type        = string
}

variable "sg_protocols_ingress" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
  }))

  default = [
    {
      from_port = 80
      to_port = 80
      protocol = "tcp"
    },
    {
      from_port = 22
      to_port = 22
      protocol = "tcp"
    }
  ]
}

variable "sg_protocols_egress" {
  type = list(object({
    from_port = number
    to_port = number
    protocol = string
  }))

  default = [
    {
      from_port = 0
      to_port = 0
      protocol = "-1"
    }
  ]
}