resource "aws_key_pair" "test_key" {
  key_name   = "test_key"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name      = aws_key_pair.test_key.key_name
  tags = {
    "Name" = "Example ${var.AWS_REGION} Instance"
  }

  provisioner "file" {
    source      = "./script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
    ]
  }

  connection {
    host        = self.public_ip
    private_key = file(var.PATH_TO_PRIVATE_KEY)
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
  }
}
