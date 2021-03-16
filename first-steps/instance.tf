provider "aws" {
  access_key = "AKIA4SBVK4IDJ5NJER5Z"
  secret_key = "hfWmqy7cUfEYwqAPYS/8ikYIn16/2N4/4+aYL2pd"
  region     = "us-east-2"
}

resource "aws_instance" "example_tf_instance" {
  ami           = "ami-0bcacfac640850227"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Example Instance"
  }
}
