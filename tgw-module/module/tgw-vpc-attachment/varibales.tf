variable "create_vpc_attachment" { 
    type = bool
}

variable "subnet_ids" { 
    type = list(string)
}

variable "transit_gateway_id" {

}

variable "vpc_id" {

}

variable "tags" { 
    type = map(string) 
}
