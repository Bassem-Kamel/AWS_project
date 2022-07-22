# network vars :
variable "vpc_cidr" {
  type = string
}
variable "sub1-zone" {
  type = string
}
variable "sub2-zone" {
  type = string
}

variable "pubsub1-cidr" {
  type = string
}
variable "pubsub2-cidr" {
  type = string
}
variable "prvsub1-cidr" {
  type = string
}
variable "prvsub2-cidr" {
  type = string
}
#------------------------------------------------------------

#Instance vars :
variable "ubuntu-ami" {
  type = string
}

variable "ec2-type" {
  type = string
}