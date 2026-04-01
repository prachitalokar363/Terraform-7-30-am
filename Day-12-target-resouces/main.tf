

resource "aws_instance" "name" {
    ami           = "ami-0c3389a4fa5bddaad"
    instance_type = "t2.micro"
  
}
resource "aws_s3_bucket" "name" {
    bucket = "veera-terraform-bucket-prachi"
  
}

#we can targte specific resource to update or destroy by using -target option in terraform plan and apply command
#terraform plan -target=aws_instance.name
#if multiple resource we can use -target multiple times
#terraform plan -target=aws_instance.name -target=aws_s3_bucket.name