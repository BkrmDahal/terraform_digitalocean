output "ip_address" {
  value = "${digitalocean_droplet.vault.ipv4_address}"
}