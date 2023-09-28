# main.tf
provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
}

resource "aws_instance" "example" {
  ami           = "ami-0f5ee92e2d63afc18"  # Replace with your preferred AMI
  instance_type = "t2.micro"
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
