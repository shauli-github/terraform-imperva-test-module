variable "account_id" {
  description = "User account id"
  type = number
}

variable "users" {
  description = "List of users"
  type        = list(object({
    first_name   = string
    last_name    = string
    email        = string
    role_ids  = list(number)
  }))
}

