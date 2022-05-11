/* variable "vpc_id" {
    default = "vpc-0735abfa246a684d9"  
} */
variable "subnet1" {
    default = "subnet-0ad62704f2b8ed127"  
}
variable "subnet2" {
    default = "subnet-0a90ecac2f3a17f8f"  
}
/* variable "instance1_id" {
    default = "i-0a688bac6dd6848ae"  
} */
variable "instance2_id" {
    default = "i-00bb9a0e7fad04db2"  
}


####################


variable "ami" {
   description = "image name"
}

variable "instance_type" {
   description = "instance type name"
}

variable "key_name" {
   description = "key name"
}

variable "instance_name_1" {
   description = "instance name"
}

variable "instance_name_2" {
   description = "instance name"
}

variable "engine_type" {
  description = "engine type"
}

variable "engine_version" {
  description = "enginer version"
}

variable "instance_class" {
  description = "instance class"
}

variable "username" {
  description = "username"
}

variable "password" {
  description = "password"
}

variable "parameter_group_name" {
  description = "parameter_group_name"
}

variable "subnet_1_id" {
  description = "subnet 1 id"
}

variable "subnet_2_id" {
  description = "subnet 2 id"
}

variable "vpc_id" {
  description = "vpc id"
}

variable "security_groups" {
  description = "security group id"
  type = string
}