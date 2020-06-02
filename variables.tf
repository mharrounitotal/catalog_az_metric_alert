### Variable module_create
variable "module_create" {
  description = "Resource create"
  type        = bool
  default     = true
}
### Assie variables 
variable "assie_rgName" {
  description = "Link to an existing Resource Group"
  type        = string
  default     = "azrgy-cdptest-01"
}

variable "assie_rgLocation" {
  description = "Location of the Resource Group"
  type        = string
  default     = "westeurope"
}

variable "assie_rgTags" {
  description = "Tags from the Resource Group"
  type        = map(any)
}

variable "action_group_id" {
  default = "/subscriptions/c4d25d9f-d0ad-4b65-bb2e-2f3bcb8b4364/resourceGroups/azrgy-cdptest-01/providers/microsoft.insights/actionGroups/test-ac-kitchen"
}

variable "alert_code" {
  type    = string
  default = "Percentage CPU" #### metric name : Percentage CPU
}

variable "alert_index" {
  type    = string
  default = "01"
}

variable "scope_assie_vm_id" {
  description = "Scope VM ID"
  type        = string
  default     = "/subscriptions/c4d25d9f-d0ad-4b65-bb2e-2f3bcb8b4364/resourceGroups/azrgy-cdptest-01/providers/Microsoft.Compute/virtualMachines/testalertkit"
}

variable "alert_description" {
  description = "Alert Description"
  type        = string
  default     = ""
}

variable "alert_severity" {
  description = ""
  type        = number
  default     = 3
}

variable "criteria_metric_namespace" {
  description = "Metric Namespace"
  type        = string
  default     = "Microsoft.Compute/virtualMachines"
}

variable "criteria_aggregation" {
  description = "Aggregation"
  type        = string
  default     = "Average"
}

variable "criteria_operator" {
  description = "Operator"
  type        = string
  default     = "GreaterThan"
}

variable "criteria_threshold" {
  description = "Threshold"
  type        = number
  default     = 50
}

variable "dimension_name" {
  description = "Dimension Name"
  type        = string
  default     = ""
}

variable "dimension_operator" {
  description = "Dimension Operator"
  type        = string
  default     = ""
}

variable "dimension_values" {
  description = "Dimension Values"
  type        = list(string)
  default     = []
}

