##provisionamento de regra no security group para permitir conexao ssh
resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "Permitir conexao ssh em instancias EC2"
  
  ingress {    
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"    
    cidr_blocks = var.cdirs_acesso_remoto
  }
  tags = {
    Name = "securitygroup-permite-ssh"
  }  
}
##key_name eh o par de chaves ssh para conexao 
##gerei uma chave local na vm que ai nao precisarei criar uma para cada maquina
##mandei achave na aws e coloquei o nome

