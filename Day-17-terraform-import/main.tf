resource "aws_instance" "name" {
    ami = "ami-01b14b7ad41e17ba4"
    instance_type = "t2.micro"
    tags = {
      Name = "test"
    }
      
    }
# data "aws_subnet" "name" {
#     filter {
#         name = "tag:Name"
#         values = ["test-subnet"]
#     }
#data blcok to fetch the subnet details based on the tag value
  
  #importing the existing s3 bucket to terraform state file
 resource "aws_s3_bucket" "name" {
    bucket = "ghffiyhbjk"
  
}
resource "aws_s3_bucket_versioning" "name" {
    bucket = aws_s3_bucket.name.id
    versioning_configuration {
     status = "Suspended"      
    }
  
}
