variable "server" {
  description = "launching multiple servers in different regions"
  type = map(object({
    Name           = string
    ami            = string
    security_group = list(string)
    keypair        = string
  }))
  default = {
    "ohio_server" = {
      Name           = "server2"
      ami            = "ami-0b0f111b5dcb2800f"
      keypair        = "AUE2-WEB-LINUX"
      security_group = ["SSH-HTTP Communication"]
    },
    "verginia_server" = {
      Name           = "server1"
      ami            = "ami-069aabeee6f53e7bf"
      keypair        = "AUE1-WEB-LINUX"
      security_group = ["launch-SSH-ACCESS"]
    }
  }
}