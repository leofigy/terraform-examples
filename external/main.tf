module "creds" {
    source = "./creds"
}


provider"mongodbatlas"{
   version="0.8.2"
   public_key  = module.creds.public_key
   private_key = module.creds.private_key
}

//resource "mongodbatlas_teams" "douteama" {
//  # (resource arguments)
//}
