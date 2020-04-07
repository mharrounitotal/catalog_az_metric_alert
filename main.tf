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


 ### Cloud Code
 l_cloud_code = "az"

 ### Calculate Application Insights Name
 
 l_metric_alert_code  = "ca"
 #l_metric_alert_index = "${var.assie_webAppIndex}"   ### TOP FIX
 l_metric_alert_name  = "${local.l_cloud_code}${local.l_metric_alert_code}${local.l_tags["Environment"]}-${local.l_tags["ApplicationCode"]}-${local.l_metric_alert_index}"}


# CPU Alert
module "create_cpu_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_cpu_namespace}"
    module_metric_name        = "${var.module_cpu_name}"
    module_aggregation        = "${var.module_cpu_aggregation}"
    module_operator           = "${var.module_cpu_operator}"
    module_threshold          = "${var.module_cpu_threshold}"
    module_dimension_name     = "${var.module_cpu_dimension_name}"
    module_dimension_operator = "${var.module_cpu_dimension_operator}"
    module_dimension_values   = "${var.module_cpu_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}

# RAM Alert
module "create_ram_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_ram_namespace}"
    module_metric_name        = "${var.module_ram_name}"
    module_aggregation        = "${var.module_ram_aggregation}"
    module_operator           = "${var.module_ram_operator}"
    module_threshold          = "${var.module_ram_threshold}"
    module_dimension_name     = "${var.module_ram_dimension_name}"
    module_dimension_operator = "${var.module_ram_dimension_operator}"
    module_dimension_values   = "${var.module_ram_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}


# Availability Alert
module "create_av_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_av_namespace}"
    module_metric_name        = "${var.module_av_name}"
    module_aggregation        = "${var.module_av_aggregation}"
    module_operator           = "${var.module_av_operator}"
    module_threshold          = "${var.module_av_threshold}"
    module_dimension_name     = "${var.module_av_dimension_name}"
    module_dimension_operator = "${var.module_av_dimension_operator}"
    module_dimension_values   = "${var.module_av_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}


# Page View Load Alert Creation 
module "create_pvl_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_pvl_namespace}"
    module_metric_name        = "${var.module_pvl_name}"
    module_aggregation        = "${var.module_pvl_aggregation}"
    module_operator           = "${var.module_pvl_operator}"
    module_threshold          = "${var.module_pvl_threshold}"
    module_dimension_name     = "${var.module_pvl_dimension_name}"
    module_dimension_operator = "${var.module_pvl_dimension_operator}"
    module_dimension_values   = "${var.module_pvl_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}


# Server Response Time Alert
module "create_srt_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_srt_namespace}"
    module_metric_name        = "${var.module_srt_name}"
    module_aggregation        = "${var.module_srt_aggregation}"
    module_operator           = "${var.module_srt_operator}"
    module_threshold          = "${var.module_srt_threshold}"
    module_dimension_name     = "${var.module_srt_dimension_name}"
    module_dimension_operator = "${var.module_srt_dimension_operator}"
    module_dimension_values   = "${var.module_srt_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}


# HTTP request execution time
module "create_hret_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_hret_namespace}"
    module_metric_name        = "${var.module_hret_name}"
    module_aggregation        = "${var.module_hret_aggregation}"
    module_operator           = "${var.module_hret_operator}"
    module_threshold          = "${var.module_hret_threshold}"
    module_dimension_name     = "${var.module_hret_dimension_name}"
    module_dimension_operator = "${var.module_hret_dimension_operator}"
    module_dimension_values   = "${var.module_hret_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}

# Failed requests
module "create_fr_alert"{
    source = "git::https://dev.azure.com/tgits-code/ASSIE%20AZURE/_git/az_alert?ref=master"
    module_create             = "${var.module_create}"
    assie_rgName              = "${module.create_cpu_alert.outputRgName}" 
    assie_rgTags              = "${module.create_cpu_alert.outputRgTags}"
    module_severity           = "${var.module_severity}"
    module_metric_namespace   = "${var.module_fr_namespace}"
    module_metric_name        = "${var.module_fr_name}"
    module_aggregation        = "${var.module_fr_aggregation}"
    module_operator           = "${var.module_fr_operator}"
    module_threshold          = "${var.module_fr_threshold}"
    module_dimension_name     = "${var.module_fr_dimension_name}"
    module_dimension_operator = "${var.module_fr_dimension_operator}"
    module_dimension_values   = "${var.module_fr_dimension_values}"
    module_action_group_id    = "${var.module_action_group_id}"
}