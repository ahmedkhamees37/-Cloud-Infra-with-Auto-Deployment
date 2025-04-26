resource "aws_instance" "web_server" {
  ami           =  "ami-0e449927258d45bc4"#"ami-0c15e602d3d6c6c4a" #"ami-0c55b159cbfafe1f0" # Amazon Linux 2 in us-east-1
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main_subnet.id
  key_name = "labsuser" # replace with your actual key pair name
  security_groups = [aws_security_group.web_sg.id]
  user_data = <<-EOF
              #!/bin/bash
              useradd ansible
              echo "ansible:123" | chpasswd
              echo "ansible ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
              EOF

  tags = {
    Name = "WebServer"
  }
}