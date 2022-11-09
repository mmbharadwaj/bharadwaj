#ec2-instance

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0c09c7eb16d3e8e70"
  instance_type = "m6i.2xlarge"
  associate_public_ip_address = true
  subnet_id = aws_subnet.ca-public-subnet-a.id
  key_name = "jenkins-key"
  security_groups = [aws_security_group.vpc_security_group.id ]
 tags = {
    Name = "jenkins_server"
  } 
}
resource "aws_key_pair" "jenkins" {
  key_name   = "jenkins-ssh"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+I6rQbihT8+z1UQ3Zv25XOgRztl3HKdnjn3YfE3My7zQZK3TflFAwvoPJyREPX79dC9FClrHhOVDGT9B12+NOTCeGdwYvHkha9v6ACEkc9YkEGfwKo/GdtU/R98/8y7AkqI/a6bR8KIMqzNn6vnT/tUdxKz7v7mpKiNtutA4dJkNGH0ZM98Wn/TsBQcKtV/2I2hnl2JXqjoVtCaLXla33ljj1Bw9HurP7+xvmQUkSUcqXxHUOpnNCLv5Yig8tD/nXYHeNpd3crp/B5/FEBl09Z6kM5DtV1iiGZj2UjfCHiCuCOPpKXvPDmMf0PEpBMLHJ+9BAgWVPR1zy36LBX2QA3+PUpJ+CJy3OZlKVegNJpJSb8i2h6nUGYpjtbJckRt4pZ+sV4SONo7GzCJYFlLaL1bYqggZPfAEeaFOCnjCuiBZNC6g1g3O0lbZzE5z1E9yQnjfVyJvG0GfcY5z3uojgPv/RTOggRqbTOIHKmEqQm0rGgxgg39cHNBq9HmPcxic= bmamidi@imrtlp672-ThinkPad-E14"
}

  

