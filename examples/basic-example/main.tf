data "azurerm_resource_group" "rg" {
  name = "azrgy-cdptest-01"
}

// A modifier
module "basic_alert" {
  source = "../.."
  assie_rgName     = data.azurerm_resource_group.rg.name
  assie_rgLocation = "westeurope"
  module_create  = true
  assie_rgTags = {
    Environment     = "y"
    ApplicationName = "kitchen"
    ApplicationCode = "alert"
    Branch          = "mh"
    Exploitation    = ""
    SecurityLevel   = ""
  }
}
