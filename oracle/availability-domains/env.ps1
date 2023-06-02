ConvertTo-Json @{
  tenancy_ocid = $Env:tenancy_ocid
  user_ocid = $Env:user_ocid
  fingerprint = $Env:fingerprint
  private_key_path = $Env:private_key_path
  region = $Env:region
}