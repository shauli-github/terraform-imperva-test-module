resource "random_integer" "rnd" {
  min = 1
  max = 100
}

module "create_user" {
  source = "../../modules/test-single-user"

  account_id = var.account_id
  user       = {
    first_name   = "POC"
    last_name    = "test"
    email        = "terraform-test${random_integer.rnd.result}@test.com"
    role_ids  = []
  }
}