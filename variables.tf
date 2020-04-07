variable "module_create" {
  description = "Does the resource need to be created? Possible values are true and false."
  default     = true
}

variable "action_group_name" {
  default = ""
}

variable "action_group_short_name" {
  default = ""
}

variable "webhook_receiver_name" {
  default = ""
}

variable "webhook_receiver_uri" {
  default = ""
}


variable "module_severity" {
  default = "4"
}

#Variables for Catalog Alert
#Variables for CPU Alert
variable "module_cpu_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_cpu_name" {
    default = "Percentage CPU"
}

variable "module_cpu_aggregation" {
    default = "Average"
}

variable "module_cpu_operator" {
    default = "Greater Than"
}

variable "module_cpu_threshold" {
    default = "75"
}

variable "module_cpu_dimension_name" {
    default= ""
}

variable "module_cpu_dimension_operator" {
    default = ""
}

variable "module_cpu_dimension_values" {
    default = ""
}

#Variables for CPU Alert
variable "module_cpu_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_ram_name" {
    default = "Percentage RAM"
}

variable "module_ram_aggregation" {
    default = "Average"
}

variable "module_ram_operator" {
    default = "Greater Than"
}

variable "module_ram_threshold" {
    default = "75"
}

variable "module_ram_dimension_name" {
    default= ""
}

variable "module_ram_dimension_operator" {
    default = ""
}

variable "module_ram_dimension_values" {
    default = ""
}

#Variables for Availability Alert
variable "module_av_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_av_name" {
    default = "Availability"
}

variable "module_av_aggregation" {
    default = "Average"
}

variable "module_av_operator" {
    default = "Less Than"
}

variable "module_av_threshold" {
    default = "90"
}

variable "module_av_dimension_name" {
    default= ""
}

variable "module_av_dimension_operator" {
    default = ""
}

variable "module_av_dimension_values" {
    default = ""
}

#Variables for Server Response Time Alert

variable "module_srt_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_srt_name" {
    default = "Server Response Time"
}

variable "module_srt_aggregation" {
    default = "Average"
}

variable "module_srt_operator" {
    default = "Greater Than"
}

variable "module_srt_threshold" {
    default = "5"
}

variable "module_srt_dimension_name" {
    default= ""
}

variable "module_srt_dimension_operator" {
    default = ""
}

variable "module_srt_dimension_values" {
    default = ""
}

#Variables for HTTP request execution time 

variable "module_hret_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_hret_name" {
    default = "HTTP request execution time"
}

variable "module_hret_aggregation" {
    default = "Average"
}

variable "module_hret_operator" {
    default = "Greater Than"
}

variable "module_hret_threshold" {
    default = "5"
}

variable "module_hret_dimension_name" {
    default= ""
}

variable "module_hret_dimension_operator" {
    default = ""
}

variable "module_hret_dimension_values" {
    default = ""
}

#Variables for Failed Requests

variable "module_fr_namespace" {
    default = "Microsoft.Compute/virtualMachines"
}
variable "module_fr_name" {
    default = "Failed Request"
}

variable "module_fr_aggregation" {
    default = "Count"
}

variable "module_fr_operator" {
    default = "Greater Than"
}

variable "module_fr_threshold" {
    default = "2"
}

variable "module_fr_dimension_name" {
    default= ""
}

variable "module_fr_dimension_operator" {
    default = ""
}

variable "module_fr_dimension_values" {
    default = ""
}