/*
resource "kubevirt_virtual_machine" "virtual_machine" {
  metadata {
    name      = var.vm-name
    namespace = var.namespace
    labels = {
      "terraform-managed" = "true"
    }
  }
  spec {
    run_strategy = var.vm-run-strategy
    data_volume_templates {
      metadata {}
      spec {
        pvc {
          access_modes = var.dv-http-access-modes
          resources {
          }
        }
      }
    }
    template {
      metadata {
        labels = {
          "kubevirt.io/vm" = var.vm-name
        }
      }
      spec {
        volume {
          name = var.vm-volume-name
          volume_source {
            data_volume {
              name = "debian12"
            }
          }
        }
        domain {
          resources {
            requests = {
              memory = var.vm-memory
              cpu    = var.vm-cores
            }
          }
          devices {
            disk {
              name = "test-vm-datavolumedisk1"
              disk_device {
                disk {
                  bus = "virtio"
                }
              }
            }
            interface {
              name                     = "main"
              interface_binding_method = "InterfaceBridge"
            }
          }
        }
        network {
          name = "main"
          network_source {
            multus {
              network_name = "tenantcluster"
            }
          }
        }
        affinity {
          pod_anti_affinity {
            preferred_during_scheduling_ignored_during_execution {
              weight = 100
              pod_affinity_term {
                label_selector {
                  match_labels = {
                    anti-affinity-key = "anti-affinity-val"
                  }
                }
                topology_key = "kubernetes.io/hostname"
              }
            }
          }
        }
      }
    }
  }
}
*/
