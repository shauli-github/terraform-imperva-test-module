output "user_emails" {
  description = "List of created user emails"
  value       = [for user in incapsula_account_user.user : user.email]
}
