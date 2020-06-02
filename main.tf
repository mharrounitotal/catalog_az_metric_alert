### catalog az_metric_alert
### MHA - 20200502 - v0.2
locals {
  l_tags = {
    Environment     = var.assie_rgTags["Environment"]
    ApplicationName = var.assie_rgTags["ApplicationName"]
    ApplicationCode = var.assie_rgTags["ApplicationCode"]
    Branch          = var.assie_rgTags["Branch"]
    Exploitation    = var.assie_rgTags["Exploitation"]
    SecurityLevel   = var.assie_rgTags["SecurityLevel"]
  }

  l_rg_name     = var.assie_rgName
  l_rg_location = var.assie_rgLocation


  ### Cloud Code
  l_cloud_code = "az"

  ### Calculate alert name (azcpurjm01)
  l_alert_code  = var.alert_code
  l_alert_index = var.alert_index ### TOP FIX
  l_alert_name  = format("%s%s%s-%s-%s", local.l_cloud_code, local.l_alert_code, local.l_tags["Environment"], local.l_tags["ApplicationCode"], local.l_alert_index)

}

#Alert Creation
resource "azurerm_monitor_metric_alert" "assie_alert" {
  count               = var.module_create ? 1 : 0
  name                = local.l_alert_name
  resource_group_name = local.l_rg_name
  scopes              = [var.scope_assie_vm_id]
  description         = var.alert_description
  severity            = var.alert_severity
  enabled             = true

  criteria {
    metric_namespace = var.criteria_metric_namespace
    metric_name      = local.l_alert_code
    aggregation      = var.criteria_aggregation
    operator         = var.criteria_operator
    threshold        = var.criteria_threshold

    /*
    dimension {
      name     = "${var.dimension_name}"
      operator = "${var.dimension_operator}"
      values   = "${var.dimension_values}"
    }
  */
  }

  action {
    action_group_id = var.action_group_id
  }

  tags = local.l_tags
}
