terraform {
  backend "s3" {
    bucket = "staterm76"
    key    = "parameter-store/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_ssm_parameter" "params" {
 count = length(var.parameters1)
  name      = var.parameters1[count.index].name
  type      = var.parameters1[count.index].type
  value     = var.parameters1[count.index].value

}