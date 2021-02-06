###############################
## Linux Distros - Variables ##
###############################

##### Ubuntu Linux #####
variable "ubuntu-publisher" {
  type        = string
  description = "Publisher ID for Ubuntu Linux" 
  default     = "Canonical" 
}

variable "ubuntu-offer" {
  type        = string
  description = "Offer ID for Ubuntu Linux" 
  default     = "UbuntuServer" 
}

##### Debian Linux #####
variable "debian-publisher" {
  type        = string
  description = "Publisher ID for Debian Linux" 
  default     = "credativ" 
}

variable "debian-offer" {
  type        = string
  description = "Offer ID for Debian Linux" 
  default     = "Debian" 
}

