
variable "admin_username" {
  type    = string
  default = "azureuser"
}
variable "ssh_public_key_path" {
  type    = string
  default = "~/.ssh/id_ed25519.pub"
}
