terraform {
  required_providers {
    morpheus = {
      source  = "gomorpheus/morpheus"
      version = "0.9.8"
    }
  }
}

provider "morpheus" {
  url      = var.morpheus_url
  username = var.morpheus_username
  password = var.morpheus_password
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

output "file_md5_hash" {
  value = local_file.foo.content_md5
}

resource "morpheus_cypher_secret" "foo_hash_cypher_secret" {
  key   = "exampleworkspace/foo_hash"
  value = local_file.foo.content_md5
}
