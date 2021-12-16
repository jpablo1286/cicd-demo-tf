variable "digitalocean_token" {}

variable "circleci_token" {}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.16.0"
    }
    circleci = {
      source = "TomTucka/circleci"
      version = "0.4.0"
    }
  }
}


# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
}

provider "circleci" {
  token    = "${var.circleci_token}"
  vcs_type     = "github"
  organization = "jpablo1286"
}