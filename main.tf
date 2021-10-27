// ssh-key
module "key" {
  source     = "git::github.com/andrewpopa/terraform-metal-project-ssh-key"
  project_id = var.project_id
}

data "template_file" "this" {
  template = file("bootstrap/raid.sh")
}

// create the device
module "device" {
  source              = "git::github.com/andrewpopa/terraform-metal-device.git"
  hostname            = var.hostname
  plan                = var.plan
  facilities          = var.facilities
  operating_system    = var.operating_system
  billing_cycle       = var.billing_cycle
  project_id          = var.project_id
  project_ssh_key_ids = [module.key.id]
  user_data           = data.template_file.this.rendered
}