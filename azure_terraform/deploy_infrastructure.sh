


main() {
  terragrunt init 
  terragrunt validate
  terragrunt plan 
  terragrunt apply --auto-approve
}

main 
