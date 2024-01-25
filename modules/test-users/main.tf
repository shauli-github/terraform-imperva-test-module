resource "incapsula_account_user" "user" {
  count = length(var.users)

  account_id = incapsula_account.parent_account.id
  email = var.users[count.index].email
  first_name = var.users[count.index].first_name
  last_name = var.users[count.index].last_name
  role_ids = var.users[count.index].role_ids

}