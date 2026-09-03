resource "aws_instance" "payments_app" {
  ami           = "ami-0abcd1234"
  instance_type = "m5.4xlarge"
  count         = 3
  tags = { env = "prod", service = "payments" }
}
resource "aws_instance" "payments_dev" {
  ami           = "ami-0abcd1234"
  instance_type = "t3.large"
  count         = 2
  tags = { env = "dev", service = "payments" }
}
