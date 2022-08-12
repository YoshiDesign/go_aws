provider "aws" {
    profile = "default"
    region = "us-east-1"

}

resource "aws_instance" "api_server" {

    ami = "ami-09499f802f26db67e"
    instance_type = "t2.micro"
    key_name = aws_key_pair.api_server_key.key_name

}

resource "aws_key_pair" "api_server_key" {

    key_name = "api-server-key"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC9vHsXL7LOC8/VKD/V8Jp1+GV5tLNebzEr8ipdMuNsjHDiGfrz4R5qwm5rH6snd3RkRgAJbvGVpGONU4cMlyQQmfxwKb4irDGoGptj8zZ83cOxfI2olUYVVnUxbSIM19lNiyphmEN38uWos+7prJ830vA4OPUco3sPhCNl6UzIXctnYGPIcpKB8bbXd/SJ1UTMgg/vsY8TSayi4GEECaVsF0o80zN3fjxcgAA8899vdSzRr/NVqEr1oTuJUz1BwLRjhutIkwgRY2P6giPTemhExlkJaKpL0eNgQ4agQWzYvrcsM6uF75VwXp8eT1jtg1oQNtyqhYk/+yGKlI/c9RzS108LFRPGJDxPYzAMu3zW3FyzTujgJidsuXpI8n33k3OQIJBycWF8jV88jg0BxjoPQMF6aErLW2/nvSUmIh0ybNCxESnA51B0WxCj/94yrXyESbswScBUxK8wP2ocaj6QKTR1ATxj+5z9xRHm50o1gzdf2UuFpXVlrOsyaAHOnWNzvwAFcXgvgDQsN9zYIQyb7SKBle5xfLyIF59M24rLPdcQOS+Fbi+nuN0djFIXRZbpTatt0JgQ5j1yV1agyXSHoP0EWxyuIX35PD9cbsCbBHt+N3XQf+fyDTcVkz7jzW817fXkxoBHwQTD5vsWKR4IonM9uSrNi9PtWkxXuUN4Rw== Yoshi@YoshiDMZ"

}