variable "Name" {
  type = string
  default = "delete"
}

variable "cidr_range_subnet" {
  type = string
}

variable "vpc_id" {
  type = string
   description = "vpc id i.e o/p from vpc module"
}