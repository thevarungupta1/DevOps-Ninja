# creating instance
resource "aws_instance" "jenkin-server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.sg-tf.id}"]
  tags = {
    Name = "jenkin server"
  }
  user_data = file("${path.module}/script.sh")
}