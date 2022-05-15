aws_region                               = "ap-south-1"

################# EC2 Instance Variables #################
instance_type                            = "t2.micro"
keypair                                  = "devops-nexus"
instance_count                           = 2
aws_instance_ami                         = "ami-079b5e5b3971bd10d"

####################### rds variables #####################
rds_allocatd_storage                     = 10
rds_database_engine                      = "mysql"
rds_database_engine_version              = "5.7"
rds_db_instance_type                     = "db.t2.micro"
rds_initial_database_name                = "wordpress_db"
rds_database_username                    = "root"
rds_database_user_password               = "9aiv5e78"
rds_parameter_group_name                 = "default.mysql5.7"
rds_max_allocated_storage                = 1000
rds_db_engine_auto_minor_version_upgrade = true
rds_delete_automated_backups             = true
rds_database_publicly_access             = true
rds_skip_final_snapshot                  = true