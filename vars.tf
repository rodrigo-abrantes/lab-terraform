#VARIAVEIS

#nome da conta que vai ser utilizada
variable "aws-account" {
    type = string
    default = "terraform-aws"  
}

#imagens da ec2
variable "ec2-ami"{
    type = map(string)

    default ={
        "windows" = "ami-0fa60543f60171fe3"
        "linux" = "ami-09e67e426f25ce0d7"
    }
}

#maquina ec2
variable "ec2-config-family"{
    type = string
    default = "t2.micro"
}


#security group - config acesso remoto
variable "cdirs_acesso_remoto" {
    type = list(string)

    default = ["189.100.70.145/32"]
  
}


