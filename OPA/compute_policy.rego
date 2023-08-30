package main

deny[msg] {
  input.resource.type == "google_compute_instance"
  
  input.resource.attr.name != "example-instance1"
  
  msg = sprintf("Compute instance '%v' is not allowed.", [input.resource.attr.name])
}
