variable "amis" {
    type = "map"

    default = {
        "us-east-1" = "ami-0fc61db8544a617ed" 
    } 
}

variable "cdirs_acesso_remoto" {
  type = "list"
  
  default = ["177.140.9.50/32"]

}

variable "key_name" {
    default  = "terraform-aws"
}

