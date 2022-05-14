module "alb" {
    source = "../../modules/alb"
    ami                         = var.ami
    instance_type               = var.instance_type
    key_name                    = var.key_name
    instance_name_1             = var.instance_name_1
    instance_name_2             = var.instance_name_2
    engine_type                 = var.engine_type
    engine_version              = var.engine_version
    instance_class              = var.instance_class
    username                    = var.username
    password                    = var.password
    parameter_group_name        = var.parameter_group_name
    subnet_1_id                 = data.terraform_remote_state.vpc_subnets_ids.outputs.public_subnets[0]
    subnet_2_id                 = data.terraform_remote_state.vpc_subnets_ids.outputs.public_subnets[1]
    security_groups             = data.terraform_remote_state.vpc_subnets_ids.outputs.security_group_id
    vpc_id                      = data.terraform_remote_state.vpc_subnets_ids.outputs.vpc_id[0]
}

