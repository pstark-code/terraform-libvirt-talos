# see https://github.com/siderolabs/talos/releases
# see https://www.talos.dev/v1.8/introduction/support-matrix/
variable "talos_version" {
  type = string
  # renovate: datasource=github-releases depName=siderolabs/talos
  default = "1.8.3"
  validation {
    condition     = can(regex("^\\d+(\\.\\d+)+", var.talos_version))
    error_message = "Must be a version number."
  }
}

# see https://github.com/siderolabs/kubelet/pkgs/container/kubelet
# see https://www.talos.dev/v1.8/introduction/support-matrix/
variable "kubernetes_version" {
  type = string
  # renovate: datasource=github-releases depName=siderolabs/kubelet
  default = "1.31.2"
  validation {
    condition     = can(regex("^\\d+(\\.\\d+)+", var.kubernetes_version))
    error_message = "Must be a version number."
  }
}

variable "cluster_name" {
  description = "A name to provide for the Talos cluster"
  type        = string
  default     = "example"
}

variable "cluster_vip" {
  description = "A name to provide for the Talos cluster"
  type        = string
  default     = "10.17.3.9"
}

variable "cluster_endpoint" {
  description = "The k8s api-server (VIP) endpoint"
  type        = string
  default     = "https://10.17.3.9:6443" # k8s api-server endpoint.
}

variable "cluster_node_network" {
  description = "The IP network of the cluster nodes"
  type        = string
  default     = "10.17.3.0/24"
}

variable "cluster_node_network_first_controller_hostnum" {
  description = "The hostnum of the first controller host"
  type        = number
  default     = 80
}

variable "cluster_node_network_first_worker_hostnum" {
  description = "The hostnum of the first worker host"
  type        = number
  default     = 90
}

variable "cluster_node_network_load_balancer_first_hostnum" {
  description = "The hostnum of the first load balancer host"
  type        = number
  default     = 130
}

variable "cluster_node_network_load_balancer_last_hostnum" {
  description = "The hostnum of the last load balancer host"
  type        = number
  default     = 230
}

variable "cluster_node_domain" {
  description = "the DNS domain of the cluster nodes"
  type        = string
  default     = "talos.test"
}

variable "ingress_domain" {
  description = "the DNS domain of the ingress resources"
  type        = string
  default     = "example.test"
}

variable "controller_count" {
  type    = number
  default = 1
  validation {
    condition     = var.controller_count >= 1
    error_message = "Must be 1 or more."
  }
}

variable "worker_count" {
  type    = number
  default = 1
  validation {
    condition     = var.worker_count >= 1
    error_message = "Must be 1 or more."
  }
}

variable "controller_root_imgsize_gb" {
  type    = number
  default = 40
  validation {
    condition     = var.controller_root_imgsize_gb >= 40
    error_message = "Must be 40 or more."
  }
}

variable "worker_root_imgsize_gb" {
  type    = number
  default = 40
  validation {
    condition     = var.worker_root_imgsize_gb >= 40
    error_message = "Must be 40 or more."
  }
}

variable "worker_data_imgsize_gb" {
  type    = number
  default = 32
  validation {
    condition     = var.worker_data_imgsize_gb >= 32
    error_message = "Must be 32 or more."
  }
}

variable "controller_vcpus" {
  type    = number
  default = 4
  validation {
    condition     = var.controller_vcpus >= 4
    error_message = "Must be 4 or more."
  }
}

variable "controller_memory_gb" {
  type    = number
  default = 4
  validation {
    condition     = var.controller_memory_gb >= 4
    error_message = "Must be 4 or more."
  }
}

variable "worker_vcpus" {
  type    = number
  default = 4
  validation {
    condition     = var.worker_vcpus >= 4
    error_message = "Must be 4 or more."
  }
}

variable "worker_memory_gb" {
  type    = number
  default = 4
  validation {
    condition     = var.worker_memory_gb >= 4
    error_message = "Must be 4 or more."
  }
}

variable "talos_libvirt_base_volume_name" {
  type    = string
  default = "talos-1.8.3.qcow2"
  validation {
    condition     = can(regex(".+\\.qcow2+$", var.talos_libvirt_base_volume_name))
    error_message = "Must be a name with a .qcow2 extension."
  }
}

variable "prefix" {
  type    = string
  default = "terraform_talos_example"
}
