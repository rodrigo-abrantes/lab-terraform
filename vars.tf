#VARIAVEIS

#nome da conta que vai ser utilizada
variable "aws-account" {
    type = string
    default = "terraform-aws"  
}

#imagem da ec2 windows
variable "ec2-ami"{
    type = map(string)

    default ={
        "windows" = "ami-0fa60543f60171fe3"
        "linux" = "ami-09e67e426f25ce0d7"
    }
}

#configuracao dynamoDB


