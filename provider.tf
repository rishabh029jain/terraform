variable "path" {default = "/home/rishabh/terraform/work/credentials"}
  


provider "google" {
    project = "prj-rishabh-test-gcp"
    region = "aisa-west2-a"
    credentials = "${file("${var.path}/secrets.json")}"
}