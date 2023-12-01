# create security group
resource "aws_security_group" "sg-tf" {
  name        = "sg-tf"
  description = "allow traffic"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      description = "allow traffic"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}