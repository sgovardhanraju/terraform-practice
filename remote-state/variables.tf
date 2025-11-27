variable "ami" {
    type = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name    = "terraform-demo"
        Terraform   = "true"
        Project = "DevSecOps"
        Environment = "DEV"
    } 
}

variable "security_group_name" {
  default = "allow_all" 
}

variable "egress_from_port" {
    default  = 0
}

variable "egress_to_port" {
    default = 0
}

  variable "protocol" {
    default =  "-1"
}

variable "ingress_from_port" {
    default  = 0
}

variable "ingress_to_port" {
    default = 0
}

  variable "cidr_blocks" { 
    type = list
    default = ["0.0.0.0/0"]
}