
# General variables 
variable "module_create" {
  description = "Does the resource need to be created? Possible values are true and false."
  default     = true
}

variable "assie_rgName" {
	description = "Name of the resource group in which the key vault will be created"
	type 		= string
	default     = ""
}

variable "assie_rgLocation" {
	description = " Location of the Resource Group"
	type        = string
	default     = ""
}

variable "assie_rgTags" {
	description = "Tags from the Resource Group"
}

##general variable alert
variable "action_group_id" {
  default =""
}
variable "alert_index" {
  default = "01"
}
variable "vm_id" {
  default = ""
}

variable "module_severity" {
  default = "4"
}

#Variables for Catalog Alert
#Variables for CPU Alert
variable "cpu_threshold" {
    default = "75"
}

#Variables for RAM Alert
variable "ram_threshold" {
    default = "75"
}

#Variables for Availability Alert
variable "av_criteria_operator" {
    default = "Less Than"
}

variable "av_threshold" {
    default = "90"
}

# variables for Page View Load Alert Creation 
variable "pvl_threshold" {
    default = "90"
}

#Variables for Server Response Time Alert
variable "srt_threshold" {
    default = "5"
}

#Variables for HTTP request execution time 
variable "hret_threshold" {
    default = "5"
}


#Variables for Failed Requests

variable "fr_criteria_aggregation" {
    default = "Count"
}

variable "fr_threshold" {
    default = "2"
}
