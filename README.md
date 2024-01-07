# kubevirt-tf-starter

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubevirt"></a> [kubevirt](#requirement\_kubevirt) | 0.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubevirt"></a> [kubevirt](#provider\_kubevirt) | 0.0.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubevirt_data_volume.data_volume_http](https://registry.terraform.io/providers/kubevirt/kubevirt/0.0.1/docs/resources/data_volume) | resource |
| [kubevirt_data_volume.data_volume_pvc](https://registry.terraform.io/providers/kubevirt/kubevirt/0.0.1/docs/resources/data_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dv-http-access-modes"></a> [dv-http-access-modes](#input\_dv-http-access-modes) | AccessModes to assign to PVC | `list(string)` | <pre>[<br>  "ReadWriteOnce"<br>]</pre> | no |
| <a name="input_dv-http-enabled"></a> [dv-http-enabled](#input\_dv-http-enabled) | n/a | `bool` | `true` | no |
| <a name="input_dv-http-name"></a> [dv-http-name](#input\_dv-http-name) | Name to assign to your PVC | `string` | `"http-dv"` | no |
| <a name="input_dv-http-size"></a> [dv-http-size](#input\_dv-http-size) | Size (Gi) of the PVC | `string` | `"8Gi"` | no |
| <a name="input_dv-http-source"></a> [dv-http-source](#input\_dv-http-source) | HTTP(S) source URL for an image to write to PVC | `string` | `"https://cloud.debian.org/images/cloud/bookworm/daily/latest/debian-12-generic-amd64-daily.qcow2"` | no |
| <a name="input_dv-http-storage-class"></a> [dv-http-storage-class](#input\_dv-http-storage-class) | StorageClass to use for the PVC | `string` | `"local-path"` | no |
| <a name="input_dv-pvc-access-modes"></a> [dv-pvc-access-modes](#input\_dv-pvc-access-modes) | AccessModes to assign to PVC | `list(string)` | <pre>[<br>  "ReadWriteOnce"<br>]</pre> | no |
| <a name="input_dv-pvc-enabled"></a> [dv-pvc-enabled](#input\_dv-pvc-enabled) | n/a | `bool` | `false` | no |
| <a name="input_dv-pvc-name"></a> [dv-pvc-name](#input\_dv-pvc-name) | Name to assign to your PVC | `string` | `"pvc-dv"` | no |
| <a name="input_dv-pvc-size"></a> [dv-pvc-size](#input\_dv-pvc-size) | Size (Gi) of the PVC | `string` | `"32Gi"` | no |
| <a name="input_dv-pvc-source-name"></a> [dv-pvc-source-name](#input\_dv-pvc-source-name) | Name of the existing PVC to clone | `string` | `""` | no |
| <a name="input_dv-pvc-source-namespace"></a> [dv-pvc-source-namespace](#input\_dv-pvc-source-namespace) | The namespace where the source-pvc is located | `string` | `""` | no |
| <a name="input_dv-pvc-storage-class"></a> [dv-pvc-storage-class](#input\_dv-pvc-storage-class) | StorageClass to use for the PVC | `string` | `"local-path"` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | n/a | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | n/a | `string` | `"default"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
