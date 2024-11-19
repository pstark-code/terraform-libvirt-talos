talos_version                  = "1.8.3"
talos_libvirt_base_volume_name = "talos-1.8.3.qcow2"

kubernetes_version             = "1.31.2"

prefix                         = "talos-prod"
cluster_name                   = "talos-prod"

cluster_vip                    = "10.101.0.9"
cluster_endpoint               = "https://10.101.0.9:6443"
cluster_node_network           = "10.101.0.0/16"
cluster_node_domain            = "talos-prod.test"
ingress_domain                 = "example-prod.test"

controller_count               = 3
controller_root_imgsize_gb     = 40
controller_vcpus               = 4
controller_memory_gb           = 16

worker_count                   = 4
worker_root_imgsize_gb         = 40
worker_data_imgsize_gb         = 100
worker_vcpus                   = 8
worker_memory_gb               = 64

# cluster_node_network_first_controller_hostnum    =
# cluster_node_network_first_worker_hostnum        =
# cluster_node_network_load_balancer_first_hostnum =
# cluster_node_network_load_balancer_last_hostnum  =
