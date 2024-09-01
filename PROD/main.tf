module "aws_budget" {
  source              = "git::https://github.com/Sanket-S-Thorat/AWS_DOP-02/tree/main/modules/aws_budget"
  name                = "initial-budget-prod"
  budget_type         = "COST"
  limit_amount        = "1"
  limit_unit          = "USD"
  time_period_start   = "2024-08-31_00:00"
  time_period_end     = "2087-06-15_00:00"
  time_unit           = "MONTHLY"
  comparison_operator = "GREATER_THAN"
  threshold           = 80
  threshold_type      = "PERCENTAGE"
  notification_type   = "FORECASTED"
  subscriber_email_addresses = ["sanket201603116@gmail.com"]
  tags                = {
    terraform = "True"
    account   = "PROD"
  }
}

output "budget_id" {
  value = module.aws_budget.budget_id
}