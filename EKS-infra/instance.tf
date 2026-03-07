resource "aws_instance" "master" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public_subnet.id

  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  tags = {
    Name = "k8s-master"
    "kubernetes.io/cluster/kubernetes" = "owned"
  }
}

resource "aws_instance" "workers" {

  count = 4

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public_subnet.id

  vpc_security_group_ids = [aws_security_group.k8s_sg.id]

  tags = {
    Name = "k8s-worker-${count.index}"
    "kubernetes.io/cluster/kubernetes" = "owned"
  }
}