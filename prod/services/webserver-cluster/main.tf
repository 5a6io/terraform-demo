provider "aws" {
  region = "ap-northeast-2"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  cluster_name = "webservers-pro"
  db_remote_state_bucket = "cloudwave-cj-17"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"
}
