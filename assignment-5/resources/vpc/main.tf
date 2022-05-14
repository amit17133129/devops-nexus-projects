module  "vpc" {
    source                            = "../../modules/vpc" 
    az                                = var.az
    env                               = var.env
    ig_name                           = var.ig_name
    region                            = var.region
    public_subnet                     = var.public_subnet
    vpc_cidr_block                    = var.vpc_cidr_block
    public_subnet_cidr                = var.public_subnet_cidr
    public_subnet_map_ip              = var.public_subnet_map_ip
}
