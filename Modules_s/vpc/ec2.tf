#ec2-instance

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0c09c7eb16d3e8e70"
  instance_type = "m6i.2xlarge"
  associate_public_ip_address = true
  subnet_id = aws_subnet.ca-public-subnet-a.id
  key_name = var.key_name
  security_groups = [aws_security_group.vpc_security_group.id ]
 tags = {
    Name = "jenkins_server"
  } 



provisioner "file" {
  source = "./${var.key_name}.pem"
  destination = "/home/ec2-user/$var.key_name}.pem"

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("${var.key_name}.pem")
    host = self.public_ip
  }
}
provisioner "remote-exec" {
  inline = ["chmod 400 ~${var.key_name}.pem"]

  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = file("${var.key_name}.pem")
    host = self.public_ip
  }
}

}
resource "tls_private_key" "key"{
  algorithm = "RSA"
}

resource "local_file" "private_key" {
  filename = "${var.namespace}-key.pem"
  content = tls_private_key.key.private_key_pem
  file_permission = "0400"
}

resource "aws_key_pair" "key_pair" {
  key_name = "${var.namespace}-key"
  public_key = tls_private_key.key.public_key_openssh
}


