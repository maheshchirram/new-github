provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "github_runner_ec2" {
  ami           = "ami-0df7a207adb9748c7"   # Ubuntu 22.04 (ap-southeast-1)
  instance_type = "t2.micro"

  key_name = "githubaction"   # Replace with your key pair

  tags = {
    Name = "github-actions"
  }
}
