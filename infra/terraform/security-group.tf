resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-http" {
  name        = "acesso-http"
  description = "acesso-http"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }

  tags = {
    Name = "http"
  }
}

resource "aws_security_group" "acesso-https" {
  name        = "acesso-https"
  description = "acesso-https"
  
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = "${var.cdirs_acesso_remoto}"
  }

  tags = {
    Name = "https"
  }
}