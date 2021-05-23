#cria um bucket S3
resource "aws_s3_bucket" "s3" {
    bucket = "lab-terraform-rakiyama-s3"
    acl    = "private"

    tags = {
        Name        = "lab-terraform-rakiyama-s3"
        Environment = "Dev"
  }
  
}