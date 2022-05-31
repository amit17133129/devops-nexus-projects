variable "aws_region" {
  description = "Region name"
  type        = string
  default     = "ap-south-1"
}

# EC2 Instance Variables

variable "instance_type" {
  description = "type of the instance"
  type        = string
  default     = "t2.micro"
}

variable "keypair" {
  description = "key pair name"
  type        = string
  default     = "terraform-key"
}

variable "instance_count" {
  description = "number of the count of the instances"
  type        = number
  default     = 1
}

variable "aws_instance_ami" {
  description = "Aamazon machine image"
  type        = string
  default     = ""
}

#### rds variables

#  RDS Input Variables

variable "rds_allocatd_storage" {
  description = "rds initial allocated storage"
  type        = number
  default     = 10
}

variable "rds_database_engine" {
  description = "Database Engine name"
  type        = string
  default     = "mysql"
}

variable "rds_database_engine_version" {
  description = "rds ratabase engine version"
  type        = string
  default     = "5.7"
}

variable "rds_db_instance_type" {
  description = "rds database Instance Type"
  type        = string
  default     = "db.t2.micro"
}

variable "rds_initial_database_name" {
  description = "rds database Name"
  type        = string
  default     = "mydb"
}

variable "rds_database_username" {
  description = "User Name"
  type        = string
  default     = "admin"
}

variable "rds_database_user_password" {
  description = "User Password"
  type        = string
  default     = ""
}

variable "rds_parameter_group_name" {
  description = "rds parameter group name"
  type        = string
  default     = "default.mysql5.7"
}

variable "rds_max_allocated_storage" {
  description = "Database Max Allocated storage"
  type        = number
  default     = 1000
}

variable "rds_db_engine_auto_minor_version_upgrade" {
  description = "rds database Engine Auto Minor Version Upgrade"
  type        = bool
  default     = false
}

variable "rds_database_publicly_access" {
  description = "Database Public Access"
  type        = bool
  default     = false
}

variable "rds_delete_automated_backups" {
  description = "rds backups"
  type        = bool
  default     = false
}

variable "rds_skip_final_snapshot" {
  description = "rds final snapshots"
  type = bool
  default = false
}