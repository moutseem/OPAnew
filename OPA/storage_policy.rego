package main

deny[msg] {
  input.resource.type == "google_storage_bucket"
  
  not startswith(input.resource.attr.name, "example-")
  
  msg = sprintf("Bucket name '%v' is not allowed.", [input.resource.attr.name])
}
