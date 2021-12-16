# Creamos un dominio nuevo

resource "digitalocean_domain" "juanrivera" {
  name = "juanrivera.org"
}

# Add a record to the domain
resource "digitalocean_record" "demo-cicd" {
  domain = "${digitalocean_domain.juanrivera.name}"
  type   = "A"
  name   = "demo-cicd"
  ttl    = "10"
  value  = "${digitalocean_loadbalancer.public.ip}"
}

