resource "aws_instance" "name" {
    ami = "ami-0c3389a4fa5bddaad"
    instance_type = "t2.micro"
#    lifecycle {
#       create_before_destroy = true
#    }
#     lifecycle {
#      ignore_changes = [ tags ]
# }
lifecycle {
  prevent_destroy = true
}
    tags = {
      Name = "dev-instance"
    }
    
  
}
