#i'm passing the values from day-9 to day-2 so source code exist into day-2 only for reference purpose but we are not going to use that code in day-9 because we are going to create module for that code and we will call that module in day-9 main.tf file

module "dev" {
source = "../Day-2-all-config-files"
ami_id =  "ami-02dfbd4ff395f2a1b"
instance_type = "t2.micro"

}