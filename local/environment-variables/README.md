# Environment variable usage in terraform

Set an environment variable that is accessible by Terraform.

- MacOS and Linux shell: export foo=bar
- Powershell: $Env:foo = "bar"
- In Terraform Cloud or Enterprise, create an environment variable, not a terraform variable, with the name foo and value bar.

  chmod u+x env.sh
