resource "digitalocean_kubernetes_cluster" "demo" {
  name    = "demo-cluster"
  region  = "nyc1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "demo-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags = ["demo-nodes"]
  }
}
