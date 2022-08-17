variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "access_key" {
  description = "Access key for AWS, saved as a secret in Github, use environment variable to access"
  type        = string
  sensitive   = true
}

variable "secret_key" {
  description = "Secret key for AWS, saved as a secret in Github, use environment variable to access"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "id for AMI which is region and OS dependent"
  type        = string
}

variable "instance_type" {
  description = "Type of instance to use in the cluster"
  type        = string
}

variable "key_name" {
  description = "Name of key-pair"
  type        = string
}

variable "iam_policy_arn" {
  description = "ARN for the IAM policy"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block used for the whole VPC"
  type        = string
}

variable "subnet_1_cidr_block" {
  description = "CIDR block for subnet 1"
  type        = string
}

variable "subnet_2_cidr_block" {
  description = "CIDR block for subnet 2"
  type        = string
}

variable "subnet_3_cidr_block" {
  description = "CIDR block for subnet 3"
  type        = string
}

variable "subnet_4_cidr_block" {
  description = "CIDR block for subnet 4"
  type        = string
}

variable "desired_capcaity" {
  description = "Desired number of nodes for the infrastructure"
  type        = number
}

variable "minimum_size" {
  description = "Minimum number of ndoes for the infrastructure"
  type        = number
}

variable "maximum_size" {
  description = "Maximum number of nodes for the infrastructure"
  type        = number
}

variable "az1" {
  description = "Availablilty zone for subnet 1"
  type        = string
}

variable "az2" {
  description = "Availablilty zone for subnet 1"
  type        = string
}

variable "az3" {
  description = "Availablilty zone for subnet 1"
  type        = string
}

variable "az4" {
  description = "Availablilty zone for subnet 1"
  type        = string
}
