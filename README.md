If you are using remote module use the Input under the module as arguments, below are from public module as example, these inputs nothing but a variable name from child modules as you can't see them public modules always publish these to use it.


https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest?tab=inputs

For example in this custom module which available in my repo **cidr_block** is a variable created in child module where we invoke in root module to pass the values as it is moduler approach.

module vpc { 
    source = "../module/vpc"
    cidr_block = var.cidr_block

}

For example in this custom module which available in my repo **private_subnet** **public_subnet**  **azs** is a variable created in child module where we invoke in root module to pass the values as it is moduler approach.
module subnet { 
    source = "../module/subnet"
    vpc_id = module.vpc.vpc_id
    private_subnet = var.private_subnet
    public_subnet =var.public_subnet
    azs = var.azs

}
