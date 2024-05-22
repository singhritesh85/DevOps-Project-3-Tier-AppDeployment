module "aks" {

  source = "../module"
  prefix = var.prefix
  location = var.location[0]
  kubernetes_version = var.kubernetes_version[6]
  ssh_public_key = var.ssh_public_key
  action_group_shortname = var.action_group_shortname
  monitoring_namespace = var.monitoring_namespace
  k8s_management_node_rg = var.k8s_management_node_rg
  k8s_management_node_vnet = var.k8s_management_node_vnet
  k8s_management_node_vnet_id = var.k8s_management_node_vnet_id 

  env = var.env[0]

  ############################ Azure VM ################################# 

  vm_count = var.vm_count  
  vm_size = var.vm_size[0]
  availability_zone = var.availability_zone
  static_dynamic = var.static_dynamic
  disk_size_gb = var.disk_size_gb
  extra_disk_size_gb = var.extra_disk_size_gb
  computer_name  = var.computer_name
  admin_username = var.admin_username
  admin_password = var.admin_password

}