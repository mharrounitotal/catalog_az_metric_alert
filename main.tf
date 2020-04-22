### catalog az_metric_alert
### KGA - 20200326 - v0.1
locals {
  l_tags = {
    Environment       = "${var.assie_rgTags["Environment"]}"
    ApplicationName   = "${var.assie_rgTags["ApplicationName"]}"
    ApplicationCode   = "${var.assie_rgTags["ApplicationCode"]}"
    Branch            = "${var.assie_rgTags["Branch"]}"
    Exploitation      = "${var.assie_rgTags["Exploitation"]}"
    SecurityLevel     = "${var.assie_rgTags["SecurityLevel"]}"
  }

  l_rg_name           = "${var.assie_rgName}"
  l_rg_location       = "${var.assie_rgLocation}"
}

# CPU Alert
module "create_cpu_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Percentage CPU"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "cpu alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.cpu_threshold}"

}


# RAM Alert
module "create_ram_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "ram"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "ram alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.ram_threshold}"
}


# Availability Alert
module "create_av_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "av"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "av alert"
    alert_severity            = "${var.module_severity}"
    criteria_operator         = "${var.av_criteria_operator}"
    criteria_threshold        = "${var.av_threshold}"

}


# Page View Load Alert Creation 
module "create_pvl_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "pageViews/duration"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "pvl alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.pvl_threshold}"
}


# Server Response Time Alert
module "create_srt_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "srt"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "srt alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.srt_threshold}"

}


# HTTP request execution time
module "create_hret_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "hret"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "hret alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.hret_threshold}"

}

# Failed requests
module "create_fr_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "requests/failed"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "fr alert"
    alert_severity            = "${var.module_severity}"
    criteria_aggregation      = "${var.fr_criteria_aggregation}"
    criteria_threshold        = "${var.fr_threshold}"
    
}