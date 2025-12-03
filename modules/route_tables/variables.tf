variable "vpc_id" {
 type=string 
 description = "vpc id i.e o/p from vpc module"
}

variable "igw_id" {
  type = string
  description = "igw value from o/p"
}

variable "cidr_range_route" {
  type = string
  description = "cidr range for route table"
}

variable "subnet_id" {
  type = string
  description = "we got the vlaalue from subnnet"
}

variable "Name" {
  type = string
}