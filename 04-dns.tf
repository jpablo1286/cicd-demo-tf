# Creamos un dominio nuevo

# Add a record to the domain
resource "digitalocean_record" "demo-cicd" {
  domain = "juanrivera.org"
  type   = "A"
  name   = "demo-cicd"
  ttl    = "60"
  value  = "${digitalocean_loadbalancer.public.ip}"
}

