output "budget_id" {
  description = "The ID of the created budget."
  value       = aws_budgets_budget.budget.id
}
