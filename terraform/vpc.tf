resource "aws_default_vpc" "default_vpc" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_default_subnet" "default_subnet_a" {
  availability_zone = local.sub_1
  tags = {
    Name = format("Default subnet for %s", local.sub_1)
  }
}

resource "aws_default_subnet" "default_subnet_b" {
  availability_zone = local.sub_2
  tags = {
    Name = format("Default subnet for %s", local.sub_2)
  }
}