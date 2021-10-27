output "public_ipv4" {
  value = module.device.access_public_ipv4
}

output "ssh" {
  value = "ssh root@${module.device.access_public_ipv4} -i ${module.key.private_key_filename}"
}