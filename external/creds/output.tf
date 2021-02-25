output "public_key" {
     value = data.external.mongoatlasvaultcredentials.result.publickey
     sensitive = true
}

output "private_key" {
     value = data.external.mongoatlasvaultcredentials.result.privatekey
     sensitive = true
}
