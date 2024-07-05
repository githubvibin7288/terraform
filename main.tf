# Define providers for different regions with unique aliases
provider "aws" {
  alias  = "ap_south_1"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "ap_southeast_1"
  region = "ap-southeast-1"
}

# Create EC2 instance in us-east-1
resource "aws_instance" "example1" {
  provider      = aws.ap_south_1
  ami           = "ami-01376101673c89611"
  instance_type = "t2.micro"
  # Additional instance configuration
}

# Create EC2 instance in us-west-2
resource "aws_instance" "example2" {
  provider      = aws.ap_southeast_1
  ami           = "ami-06d753822bd94c64e"
  instance_type = "t2.micro"
  # Additional instance configuration
}
