terraform {
  extra_arguments "refresh_plan_args" {
    commands = [
      "refresh",
      "plan",
      "apply",
      "destroy",
      "console",
      "init"
    ]
    // required_var_files will add the extra argument -var-file=<your file> for each file 
    // specified and if they don’t exist, exit with an error. "${get_parent_terragrunt_dir()}/tfvars/${get_env("PROVIDER_CREDENTIALS_TFVARS")}",
     required_var_files = [
         "tfvars/provider.tfvars", 
    ]
  }

  extra_arguments "apply_args" {
    commands = [
      "apply",
      "destroy"
    ]
    arguments = [
      "--auto-approve"
    ]
  }
}
