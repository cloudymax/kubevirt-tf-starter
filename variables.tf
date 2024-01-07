variable "kubeconfig_path" {
  type      = string
  sensitive = true
}

variable "namespace" {
  type      = string
  sensitive = false
  default   = "default"
}

/*
  Settings for Datavolumes from HTTP sources 
*/

variable "dv-http-enabled" {
  type    = bool
  default = true
}

variable "dv-http-source" {
  type        = string
  description = "HTTP(S) source URL for an image to write to PVC"
  sensitive   = false
  default     = "https://cloud.debian.org/images/cloud/bookworm/daily/latest/debian-12-generic-amd64-daily.qcow2"
}

variable "dv-http-name" {
  type        = string
  description = "Name to assign to your PVC"
  sensitive   = false
  default     = "http-dv"
}

variable "dv-http-size" {
  type        = string
  description = "Size (Gi) of the PVC"
  sensitive   = false
  default     = "8Gi"
}

variable "dv-http-storage-class" {
  type        = string
  description = "StorageClass to use for the PVC"
  sensitive   = false
  default     = "local-path"
}

variable "dv-http-access-modes" {
  type        = list(string)
  description = "AccessModes to assign to PVC"
  sensitive   = false
  default     = ["ReadWriteOnce"]
}

/*
  Settings for Datavolumes from PVC sources 
*/

variable "dv-pvc-enabled" {
  type    = bool
  default = false
}

variable "dv-pvc-source-name" {
  type        = string
  description = "Name of the existing PVC to clone"
  sensitive   = false
  default     = ""
}

variable "dv-pvc-source-namespace" {
  type        = string
  description = "The namespace where the source-pvc is located"
  sensitive   = false
  default     = ""
}

variable "dv-pvc-name" {
  type        = string
  description = "Name to assign to your PVC"
  sensitive   = false
  default     = "pvc-dv"
}

variable "dv-pvc-size" {
  type        = string
  description = "Size (Gi) of the PVC"
  sensitive   = false
  default     = "32Gi"
}

variable "dv-pvc-storage-class" {
  type        = string
  description = "StorageClass to use for the PVC"
  sensitive   = false
  default     = "local-path"
}

variable "dv-pvc-access-modes" {
  type        = list(string)
  description = "AccessModes to assign to PVC"
  sensitive   = false
  default     = ["ReadWriteOnce"]
}

