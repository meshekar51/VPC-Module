module vpc { 
    source = "../module/vpc"
    cidr_block = var.cidr_block

}

module subnet { 
    source = "../module/subnet"
    vpc_id = module.vpc.vpc_id
    private_subnet = var.private_subnet
    public_subnet =var.public_subnet
    azs = var.azs

}


module route { 
    source = "../module/route"
    vpc_id = module.vpc.vpc_id
    igw = module.igw.igw
    private_subnets = module.subnet.private_subnets
    public_subnets = module.subnet.public_subnets
    nat = module.nat.nat
}


module nat { 
    source = "../module/nat"
    vpc_id = module.vpc.vpc_id
    public_subnets = module.subnet.public_subnets
    igw = module.igw.igw
}

module igw { 
    source = "../module/igw"
    vpc_id = module.vpc.vpc_id
}
module secgroup { 
    source = "../module/secgroup"
    vpc_id = module.vpc.vpc_id
    cidr_Secgroup = var.cidr_Secgroup
}