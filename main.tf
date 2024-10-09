data "aws_ami" "east-ubuntu-lts" {
  most_recent = true

  owners = ["099720109477"] # Ubuntu's ownership

  filter {
    name   = "name"
    values = ["*ubuntu-noble-24.04-amd64*"]
  }
}

resource "aws_instance" "server1" {
  ami           = data.aws_ami.east-ubuntu-lts.id
  instance_type = "t3.micro"
  tags = {
    "Name" = "server1"
  }
}

data "aws_ami" "west-ubuntu-lts" {
  provider    = aws.west
  most_recent = true

  owners = ["099720109477"] # Ubuntu's ownership

  filter {
    name   = "name"
    values = ["*ubuntu-noble-24.04-amd64*"]
  }
}


resource "aws_instance" "server2" {
  provider      = aws.west
  ami           = data.aws_ami.west-ubuntu-lts.id
  instance_type = "t3.micro"
  tags = {
    "Name" = "server2"
  }
}