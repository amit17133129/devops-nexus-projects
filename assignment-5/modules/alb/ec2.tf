resource "null_resource" "test1" {
 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("devops-nexus-projects/modules/alb/testkey.pem")
    host     = aws_instance.webserver1.public_ip
  }


 provisioner "remote-exec" {
    inline = [
      "sudo yum install http -y",
      "sudo yum install php -y",
      "sudo systemctl start httpd",
      "sudo systemctl start php",
      "cd /var/www/html",
      "sudo wget https://wordpress.org/latest.zip",
      "sudo unzip latest.zip"
    ]
  }
}

resource "null_resource" "test2" {
 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("devops-nexus-projects/modules/alb/testkey.pem")
    host     = aws_instance.webserver2.public_ip
  }


 provisioner "remote-exec" {
    inline = [
      "sudo yum install http -y",
      "sudo yum install php -y",
      "sudo systemctl start httpd",
      "sudo systemctl start php",
      "cd /var/www/html",
      "sudo wget https://wordpress.org/latest.zip",
      "sudo unzip latest.zip"
    ]
  }
} 

resource "aws_instance" "webserver1" {
  ami = var.ami
  instance_type = var.instance_type
  security_groups = [var.security_groups]
  subnet_id     = var.subnet_1_id
  key_name = var.key_name
  tags = {
    "Name" = var.instance_name_1
  }
}

resource "aws_instance" "webserver2" {
  ami = var.ami
  instance_type = var.instance_type
  security_groups = [var.security_groups]
  subnet_id     = var.subnet_2_id
  key_name = var.key_name
  tags = {
    "Name" = var.instance_name_2
  }
}

