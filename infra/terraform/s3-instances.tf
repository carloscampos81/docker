resource "aws_s3_bucket" "dev" {
    bucket = "desafio-globo-ccampos-dev"
    acl    = "private"

    tags  = { 
        Name  = "desafio-globo-ccampos-dev"
    } 
}
