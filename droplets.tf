resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "test-droplet"
  region = "fra1"
  size   = "s-1vcpu-1gb"
}

output "droplet_ip_address" {
  value = digitalocean_droplet.web.ipv4_address
}
