data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-devopsb64"
    key    = "vpc/dev/${var.COMPONENT}/terraform.tfstate"
    region = "us-east-1"
  }
}
