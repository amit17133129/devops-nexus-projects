env                                      = "dev"
region                                   = "us-east-1"
vpc_cidr_block                           = ["10.10.0.0/16"]

public_subnet                            = ["pub-sub-1", "pub-sub-2"]

public_subnet_cidr                       = ["10.10.1.0/24", "10.10.2.0/24"]

az                                       = ["us-east-1a", "us-east-1b"]
public_subnet_map_ip                     = ["true", "true"]

ig_name                                  = "vpc-igw"
