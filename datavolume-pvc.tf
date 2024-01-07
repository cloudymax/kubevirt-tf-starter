resource "kubevirt_data_volume" "data_volume_pvc" {

  count = var.dv-pvc-enabled ? 1 : 0

  metadata {
    name      = var.dv-pvc-name
    namespace = var.namespace
    annotations = {
      "cdi.kubevirt.io/storage.bind.immediate.requested" = "true"
    }
  }
  spec {
    source {
      pvc {
        name      = "debian12"
        namespace = "default"
      }
    }
    pvc {
      access_modes = var.dv-pvc-access-modes
      resources {
        requests = {
          storage = var.dv-pvc-size
        }
      }
      storage_class_name = var.dv-pvc-storage-class
    }
  }
}

