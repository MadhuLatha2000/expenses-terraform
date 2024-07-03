variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "instance_type" {
  default = "t2.micro"
}


variable "name" {
  default = "all_traffic"
}

variable "description" {
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "in_description" {
    default = "HTTPS ingress"
}

variable "from_port" {
  default = 0   
}

variable "to_port" {
  default = 0   
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "protocol" {
  default = "-1"
}