provider "aws" {
    profile = "default"
    region = "us-east-1"

}

resource "aws_instance" "api_server" {

    ami = "ami-09499f802f26db67e"
    instance_type = "t2.micro"
    # hvm:ebs-ssd

}