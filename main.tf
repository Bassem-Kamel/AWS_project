module "network" {
  source           = "./network"
  net_vpc_cidr     = var.vpc_cidr
  net_sub1-zone    = var.sub1-zone
  net_sub2-zone    = var.sub2-zone
  net_pubsub1-cidr = var.pubsub1-cidr
  net_pubsub2-cidr = var.pubsub2-cidr
  net_prvsub1-cidr = var.prvsub1-cidr
  net_prvsub2-cidr = var.prvsub2-cidr
}
