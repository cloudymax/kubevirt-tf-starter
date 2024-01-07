resource "kubevirt_data_volume" "data_volume_http" {

  count = var.dv-http-enabled ? 1 : 0

  metadata {
    name      = var.dv-http-name
    namespace = var.namespace
    annotations = {
      "cdi.kubevirt.io/storage.bind.immediate.requested" = "true"
    }
    labels = {
      "key1" = "value1"
    }
  }
  spec {
    source {
      http {
        url = var.dv-http-source
      }
    }
    pvc {
      access_modes = var.dv-http-access-modes
      resources {
        requests = {
          storage = var.dv-http-size
        }
      }
      storage_class_name = var.dv-http-storage-class
    }
  }
}
