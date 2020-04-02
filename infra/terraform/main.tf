provider "aws" {
   version = "~> 2.0"
   region  = "us-east-1"
}

resource "aws_instance" "jenkins"{
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name =  "jenkins" 
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}","${aws_security_group.acesso-https.id}","${aws_security_group.acesso-http.id}"]
}

resource "aws_instance" "dev"{
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name =  "dev" 
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}","${aws_security_group.acesso-https.id}","${aws_security_group.acesso-http.id}"]
}

/*resource "aws_instance" "homolog"{
    count = 2 
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name  = "homolog${count.index}" 
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}","${aws_security_group.acesso-https.id}","${aws_security_group.acesso-http.id}"]
}

resource "aws_instance" "prod"{
    count = 2 
    ami = "${var.amis["us-east-1"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    tags = {
        Name = "prod${count.index}" 
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}","${aws_security_group.acesso-https.id}","${aws_security_group.acesso-http.id}"]
}

resource "aws_dynamodb_table" "api_comentarios" {
  name           = "Comentarios"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "UserId"
  range_key      = "Assunto"
  range_key      = "TopAssuntos"

  attribute {
    name = "UserId"
    type = "N"
  }

  attribute {
    name = "Assunto"
    type = "S"
  }

  attribute {
    name = "TopAssuntos"
    type = "S"
  }

 ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = "AssuntoIndex"
    hash_key           = "Assunto"
    range_key          = "TopAssuntos"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = "INCLUDE"
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "api_comentarios-1"
    Environment = "production"
  }
}*/