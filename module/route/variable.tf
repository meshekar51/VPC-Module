variable vpc_id {
    type = string
    description = "vpc cidr"
}
variable igw {
    type = string
    description = "igw"
}

variable "public_subnets" {
  
}

variable "private_subnets" {
 
}

variable nat {
    type = list(string)
}