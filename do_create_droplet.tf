provider "digitalocean" {
    token ="${var.token}"
}

# Create a new Droplet using the SSH key
resource "digitalocean_droplet" "vault" {
  image    = "${var.ubuntu}"
  name     = "vault"
  region   = "${var.do_region}"
  size     = "s-1vcpu-1gb"
  ssh_keys = ["${var.fingerprint}"]

  connection {
    user        = "root"
    type        = "ssh"
    private_key = "${file("${var.ssh_pub_key}")}"
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = [
      "export PATH=$PATH:/usr/bin",
      "sudo apt-get update",
    ]
  }

  provisioner "file" {
    source      = "scripts/install_docker.sh"
    destination = "~/install_docker.sh"

  }
  provisioner "remote-exec" {
    inline = [
      "bash install_docker.sh"
    ]
  }

}

