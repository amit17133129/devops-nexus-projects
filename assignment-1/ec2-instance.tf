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

    provisioner "file" {
      source      = "devops-nexus-projects/assignment-1/playbook.yaml"
      destination = "/home/ec2-user/mainplaybook.yml"
      connection {
        type        = "ssh"
        user        = "ec2-user"
        private_key = file("devops-nexus-projects/assignment-1/us-east-1.pem")
        host        = aws_instance.Ansible_controller_node.public_ip
      }
    }

    provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("devops-nexus-projects/assignment-1/us-east-1.pem")
      host        = aws_instance.Ansible_controller_node.public_ip
    }

    inline = [
      "sudo sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y",
      "sudo sudo yum install ansible -y",
      "sudo yes | cp /home/ec2-user/ansible.cfg   /etc/ansible/ansible.cfg",
      "sudo yum install java-1.8.0-openjdk-devel -y",
      "sudo yum install git -y",
      "sudo pip3 install boto boto3",
      /* "chmod  400 /home/ec2-user/ab-us-east-1.pem", */
      "sudo ansible localhost -m ping",
      "sudo  ansible-playbook  -i localhost /home/ec2-user/playbook.yml"
    ]
  }
}
