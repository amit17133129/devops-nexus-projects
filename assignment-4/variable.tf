variable "aws_region" {
  description = "Region from where resources will be used"
  type = string
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "VPC ID"
  type = string
}

variable "instance_count" {
  description = "Number of instances"
  type = number
}

variable "instance_keypair"{
  description = "instance key name"
  type = string
}


variable "asg_template_instance_type" { 
  description = "auto scaling group template instance type"
  type = string
  default = "t2.micro"
}

variable "prefix" {
  description = "launch template prefix"
  type = string
  default = "wordpress"
 }

variable "asg_desired_capacity" {
  description = "desired instance count"
  type = number
  default = 1
}

variable "asg_max_capacity" { 
  description = "desired instance count"
  type = number
  default = 2
}

variable "asg_min_capacity" { 
  description = "desired instance count"
  type = number
  default = 1
}