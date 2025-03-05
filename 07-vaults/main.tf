provider "vault" {
    address = "http://vault-internal.shpatil17.online:8200"
    token = var.vault_token
}

variable "vault_token" {}

data "vault_generic_secret" "secret_data" {
  path = "test/demo"
}

resource "local_file" "test" {
  filename = "/tmp/1"
  content = data.vault_generic_secret.secret_data.data["username"]
}

