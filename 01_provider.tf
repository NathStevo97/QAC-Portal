provider "google" {
	credentials = "${file("~/.gcp/terraform_key.json")}"
	project = "${var.project}"
	region = "${var.region}"
}
