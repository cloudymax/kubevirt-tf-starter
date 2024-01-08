terraform {
  required_providers {
    kubevirt = {
      source  = "kubevirt/kubevirt"
      version = "0.0.1"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

provider "kubevirt" {
  # Configuration options
}

provider "helm" {
  # Configuration options
  kubernetes {
    config_path = "kubeconfig.yaml"
  }

}

