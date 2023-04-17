
variable "aws_ami" {
  description = "Amazon machine image"
  type        = map(string)
  default = {
    us-east-1 = "ami-069aabeee6f53e7bf"
    us-east-2 = "ami-0b0f111b5dcb2800f"
  }

}

variable "security_group" {
  description = "object to structure the security group"
  type        = set(string)
  default     = ["launch-SSH-ACCESS"]
}
variable "security_group_ohio" {
  description = "object to structure security group"
  type        = list(string)
  default     = ["SSH-HTTP Communication"]

}

variable "instance_type" {
  description = "Instance type to launch"
  type        = string
  default     = "t2.micro"
}

variable "keypairv" {
  description = "Keypair to launch the ec2 with"
  type        = string
  default     = "AUE1-WEB-LINUX"
}
variable "keypairo" {
  description = "keypair to launch ec2 ohio"
  type        = string
  default     = "AUE2-WEB-LINUX"


}
