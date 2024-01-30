data "incapsula_account_data" "account_data" {
}

data "incapsula_account_roles" "roles" {
  account_id = data.incapsula_account_data.account_data.current_account
}

module "create_user" {
  source = "../../modules/test-single-user"

  account_id = data.incapsula_account_data.account_data.id
  user = {
    first_name = "POC"
    last_name  = "test"
    email      = "terraform-example@test.com"
    role_ids   = [data.incapsula_account_roles.roles.reader_role_id]
  }
}