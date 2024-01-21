terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-state-telerik-dev0ps"
    region         = "eu-central-1"
    key            = "terraform-state.tfstate"
    dynamodb_table = "terraform-state-locks"
    }
}
