# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami           = "0182f373e66f89c85"
  instance_type = "t2.micro"
  tags = {
    Name = "jj-tech-ec2"
  }
}

# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = "us-east-1"
  profile = "dev-profile"
}
