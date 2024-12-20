output "talosconfig" {
  value     = data.talos_client_configuration.talos.talos_config
  sensitive = true
}

output "workerconfig" {
  value =  data.talos_machine_configuration.worker.machine_configuration
  sensitive = true
}

output "controllerconfig" {
  value =  data.talos_machine_configuration.controller.machine_configuration
  sensitive = true
}



output "kubeconfig" {
  value     = talos_cluster_kubeconfig.talos.kubeconfig_raw
  sensitive = true
}

output "controllers" {
  value = join(",", [for node in local.controller_nodes : node.address])
}

output "workers" {
  value = join(",", [for node in local.worker_nodes : node.address])
}
