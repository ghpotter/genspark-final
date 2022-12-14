resource "aws_security_group" "terraform_access" {
  name        = "allows access"
  description = "Allows SSH, HTTP and traffic within the SG connections to terraform VPC"
  vpc_id      = aws_vpc.vpc.id

  # SSH
  ingress {
    description = "Inbound rule"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP
  ingress {
    description = "Inbound rule"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Within Secuirty Group
  ingress {
    description = "Inbound rule"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "terraform_access"
  }
}