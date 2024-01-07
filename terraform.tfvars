# Global Settings
kubeconfig_path = "kubeconfig.yaml"
namespace       = "default"

# Datavolume from HTTP source
dv-http-enabled       = true
dv-http-source        = "https://cloud.debian.org/images/cloud/bookworm/daily/latest/debian-12-generic-amd64-daily.qcow2"
dv-http-name          = "debian12"
dv-http-size          = "8Gi"
dv-http-storage-class = "local-path"
dv-http-access-modes  = ["ReadWriteOnce"]

# Datavolume from PVC source
dv-pvc-enabled          = false
dv-pvc-source-name      = "debian12"
dv-pvc-source-namespace = "default"
dv-pvc-name             = "pvc-dv"
dv-pvc-size             = "32Gi"
dv-pvc-storage-class    = "local-path"
dv-pvc-access-modes     = ["ReadWriteOnce"]

