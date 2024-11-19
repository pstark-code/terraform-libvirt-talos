talos_version                  = "1.8.3"
talos_libvirt_base_volume_name = "talos-1.8.3.qcow2"

kubernetes_version             = "1.31.2"

prefix                         = "talos_prod"
cluster_name                   = "talos-prod"

cluster_vip                    = "10.17.3.9"
cluster_endpoint               = "https://10.17.3.9:6443"
cluster_node_network           = "10.17.3.0/24"
cluster_node_domain            = "talos.test"
ingress_domain                 = "example.test"

controller_count               = 1
controller_root_imgsize_gb     = 40
controller_vcpus               = 4
controller_memory_gb           = 16

worker_count                   = 4
worker_root_imgsize_gb         = 40
worker_data_imgsize_gb         = 100
worker_vcpus                   = 4
worker_memory_gb               = 64

# cluster_node_network_first_controller_hostnum    =
# cluster_node_network_first_worker_hostnum        =
# cluster_node_network_load_balancer_first_hostnum =
# cluster_node_network_load_balancer_last_hostnum  =
