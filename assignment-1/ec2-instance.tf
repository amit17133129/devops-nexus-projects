# EC2 Instance
resource "aws_instance" "web_server" {
  ami                    = var.aws_instance_ami
  instance_type          = var.instance_type
  key_name               = var.keypair
  count                  = var.instance_count
  vpc_security_group_ids = [aws_security_group.sg_ssh.id, aws_security_group.sg_web.id]
  tags = {
    "Name" = "webserver"
  }
}
