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
  description = "Create a datavolume from an HTTP source"

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
  description = "Create a datavolume from a pvc source"
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


/*
  Settings for Virtual Machine 
*/

variable "vm-name" {
  type = string
  default = "my-vm"
  sensitive = false
  description = "Name of the virtual Machine"
}

variable "vm-run-strategy" {
  type = string
  default = "Always"
  sensitive = false
  description = "One of: Always, RerunOnFailure, Manual, Halted"
}

variable "vm-volume-name" {
  type = string
  default = "boot-volume"
  sensitive = false
  description = "Name of the volume to attack to the VM"
}

variable "vm-boot-volume-source" {
  type = string
  sensitive = false
  default = "none"
  description = "Name of the datavolume which backs the boot-volume"
}

variable "vm-kvm-enabled" {
  type = bool
  sensitive = false
  default = false
  description = "Enable KVM (Kernel-based Virtual Machine) acceleration"  
}

variable "vm-acpi-enabled" {
  type = bool
  sensitive = false
  default = false
  description = "Enable Advanced Configuration and Power Interface (ACPI) "  
}

variable "vm-smm-enabled" {
  type = bool
  sensitive = false
  default = false
  description = "Enable System Management Mode ( SMM ) "  
}

variable "vm-memory" {
  type = string
  default = "2G"
  sensitive = false
  description = "Amount of Mmeoty to assign VM (G)"
}

variable "vm-cores" {
  type = number
  default = 1
  sensitive = false
  description = "Number of physical cores to assign VM"
}

