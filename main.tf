# To import an existing resource
# 1. create the resource in the configuration below
# 2. grab the resource ID from the AWS console
# 3. run terraform import with the resource-name and instance-id:
#    terraform import aws_instance.import_instance i-0762f502149a10dfa
# 4. check terraform state:
#    terraform state list
# 5. view the state for the instance
#    terraform state show aws_instance.import_instance
# 6. update the infrastructure code to match the shown state
resource "aws_instance" "import_instance" {
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = "import_instance"
  }
}