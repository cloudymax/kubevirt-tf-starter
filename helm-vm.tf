resource "helm_release" "example" {
  name       = "debain12"
  repository = "https://cloudymax.github.io/kubevirt-community-stack/"
  chart      = "kubevirt-vm"
  version    = "0.1.9"

  values = [
    "${file("values.yaml")}"
  ]

}
