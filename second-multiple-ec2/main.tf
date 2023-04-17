resource "aws_instance" "verginia_local_name" {
  ami             = lookup(var.aws_ami, "us-east-1", null)
  security_groups = var.security_group
  key_name        = var.keypairv
  instance_type   = var.instance_type
  provider        = aws.us-east-1
  tags = {
    Name = "server1"
  }
}
resource "aws_instance" "ohio_local_name" {
  ami             = lookup(var.aws_ami, "us-east-2", null)
  security_groups = var.security_group_ohio
  key_name        = var.keypairo
  instance_type   = var.instance_type
  provider        = aws.us-east-2
  tags = {
    Name = "server2"
  }
}