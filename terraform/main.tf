variable "username" {}
variable "api_key" {}

provider "namecheap" {
  user_name = var.username
  api_user  = var.username
  api_key   = var.api_key
}

resource "namecheap_domain_records" "_1man1band-com" {
  domain     = "1man1band.com"
  email_type = "NONE"
  record {
    hostname = "@"
    type     = "A"
    # address    = ["185.189.108.153", "185.189.109.153", "185.189.110.153", "185.189.111.153"]
    address = "76.76.21.21"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    # address    = "pypeaday.github.io"
    address = "cname.vercel-dns.com"
  }
}

