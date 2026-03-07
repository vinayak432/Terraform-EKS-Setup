variable "cluster_name" {
  default = "kubernetes"
}

variable "instance_type" {
  default = "m7i-flex.large"
}

variable "key_name" {
  description = "EC2 SSH key"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI"
}