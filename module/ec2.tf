module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "test-instance"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "ops-qa"
  monitoring             = true
  vpc_security_group_ids = ["sg-a16400dc"]
  subnet_id              = "subnet-025ec564"

  tags = merge(local.tags, { Name = "test_tf_backend"})
}
