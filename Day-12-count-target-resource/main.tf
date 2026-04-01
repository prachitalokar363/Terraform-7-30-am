variable "dev" {
    type = bool
    default = false
}


resource "aws_instance" "name" {
    ami           = "ami-0c3389a4fa5bddaad"
    instance_type = "t2.micro"
    count = var.dev ? 1 : 0
}