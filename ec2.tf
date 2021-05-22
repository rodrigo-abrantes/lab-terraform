#Configuracao de recursos EC2

resource "aws_instance" "dev-windows" {
    ami = "${var.ec2-ami["windows"]}"
    instance_type = "${var.ec2-config-family}"
    key_name = "${var.aws-account}"
    tags = {
        Name = "ec2-windows-server-${var.ec2-config-family}"
    }    
    
}
