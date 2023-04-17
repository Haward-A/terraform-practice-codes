resource "aws_instance" "ohio_server" {
  ami             = lookup(var.server["ohio_server"], "ami", null)
  key_name        = lookup(var.server["ohio_server"], "keypair", null)
  security_groups = lookup(var.server["ohio_server"], "security_group", null)
  instance_type   = "t2.micro"
  tags = {
    Name = lookup(var.server["ohio_server"], "Name", null)
  }
  provider = aws.us-east-2
}
resource "aws_instance" "verginia_server" {
  ami             = lookup(var.server["verginia_server"], "ami", null)
  key_name        = lookup(var.server["verginia_server"], "keypair", null)
  security_groups = lookup(var.server["verginia_server"], "security_group", null)
  instance_type   = "t2.micro"
  tags = {
    Name = lookup(var.server["verginia_server"], "Name", null)
  }
  provider = aws.us-east-1
}
