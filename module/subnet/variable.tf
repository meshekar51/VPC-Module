variable vpc_id {
    type = string
    description = "vpc cidr"
}

variable "private_subnet" {
    type = list(string)
    description = "private subnet"
}

variable "public_subnet" {
    type = list(string)
    description = "Public subnet"
}

variable "azs" {
    type = list(string)
    description = "Availability Zones"
}