#Configuracao de recursos EC2

resource "aws_instance" "dev-windows" {
    ami = "${var.ec2-ami["windows"]}"
    instance_type = "${var.ec2-config-family}"
    key_name = "${var.aws-account}"
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
    tags = {
        Name = "ec2-windows-server-${var.ec2-config-family}"
    }    
    
}

resource "aws_instance" "dev-linux" {
      ami = "${var.ec2-ami["linux"]}"
      instance_type = "${var.ec2-config-family}"
      key_name = "${var.aws-account}"
      vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
      tags = {
        Name = "ec2-linux-${var.ec2-config-family}"
      }
}