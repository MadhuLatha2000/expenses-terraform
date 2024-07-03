# Ec2 creation
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
    vpc_security_group_ids =[aws_security_group.allow_tls.id] 
  tags = {
    Name = "madhu"
  }
}

# Security group creation
resource "aws_security_group" "allow_tls" {
  name        = var.name
  description = var.description

ingress {
   description = var.in_description
   from_port   = var.from_port
   to_port     = var.to_port
   protocol    = var.protocol
   cidr_blocks = var.cidr_blocks
 }

egress {
   from_port   = var.from_port
   to_port     = var.to_port
   protocol    = var.protocol
   cidr_blocks = var.cidr_blocks
 }

  tags = {
    Name = "allow_tls"
  }
}

