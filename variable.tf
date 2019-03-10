

variable "do_region" {
  description = "Digital Ocean Bangalore Data Center 1"
  default     = "blr1"
}

variable "ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-16-04-x64"
}

variable "token" {
  description = "token for digitalocean"
}

variable "fingerprint" {
  description = "fingerprint of ssh key"
  default = ["9f:5c:ef:d1:88:65"]
  
}

variable "ssh_pub_key" {
  description = "fingerprint of ssh key"
  default = "~/.ssh/id_isa"
  
}

