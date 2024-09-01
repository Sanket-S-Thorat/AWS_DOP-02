variable "name" {
  description = "The name of the budget."
  type        = string
}

variable "budget_type" {
  description = "The budget type. Valid values are COST or USAGE."
  type        = string
}

variable "limit_amount" {
  description = "The budget limit amount."
  type        = string
}

variable "limit_unit" {
  description = "The budget limit unit. Valid values are USD or the appropriate unit for the budget type."
  type        = string
}

variable "time_period_start" {
  description = "The start date of the budget period."
  type        = string
}

variable "time_period_end" {
  description = "The end date of the budget period."
  type        = string
}

variable "time_unit" {
  description = "The time unit for the budget. Valid values are DAILY, MONTHLY, or ANNUALLY."
  type        = string
}

variable "comparison_operator" {
  description = "The comparison operator for notifications."
  type        = string
}

variable "threshold" {
  description = "The threshold for notifications."
  type        = number
}

variable "threshold_type" {
  description = "The type of the threshold."
  type        = string
}

variable "notification_type" {
  description = "The type of notification."
  type        = string
}

variable "subscriber_email_addresses" {
  description = "List of email addresses for notifications."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the budget."
  type        = map(string)
  default     = {}
}
