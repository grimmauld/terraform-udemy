variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-09943f9da1f1b7899"
    us-east-2 = "ami-0bcacfac640850227"
    us-west-1 = "ami-017329b75bfa6772b"
    us-west-2 = "ami-076cbb27c223df09a"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "~/ssh/private-keys/test.pem"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/ssh/public-keys/test.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
