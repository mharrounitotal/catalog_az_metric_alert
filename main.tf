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


# 
module "create_dros_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Disk Read Operations/Sec"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Disk Read Operations/Sec alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.ram_threshold}"
}


# 
module "create_dwos_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Disk Write Operations/Sec"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Disk Write Operations/Sec alert"
    alert_severity            = "${var.module_severity}"
    criteria_operator         = "${var.av_criteria_operator}"
    criteria_threshold        = "${var.av_threshold}"

}


#  
module "create_ddwb_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Data Disk Write Bytes/sec"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Data Disk Write Bytes/sec alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.pvl_threshold}"
}


# 
module "create_ddrb_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Data Disk Read Bytes/sec"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Data Disk Read Bytes/sec alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.srt_threshold}"

}


# 
module "create_ddro_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Data Disk Read Operations/Sec"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Data Disk Read Operations/Sec alert"
    alert_severity            = "${var.module_severity}"
    criteria_threshold        = "${var.hret_threshold}"

}

# 
module "create_if_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = local.l_rg_name
    assie_rgLocation          = local.l_rg_location
    assie_rgTags              = local.l_tags
    module_action_group_id    = "${var.action_group_id}"
    alert_code                = "Inbound Flows"
    alert_index               = "${var.alert_index}"
    scope_assie_vm_id         = "${var.vm_id}"
    alert_description         = "Inbound Flows alert"
    alert_severity            = "${var.module_severity}"
    criteria_aggregation      = "${var.fr_criteria_aggregation}"
    criteria_threshold        = "${var.fr_threshold}"
    
}