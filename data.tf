data "azurerm_client_config" "current" {}

data "http" "ip" {
  url   = "https://api.ipify.org/"
  retry {
    attempts     = 5
    max_delay_ms = 1000
    min_delay_ms = 500
  }
}