docker run --platform linux/amd64 -it \
   -v $(pwd):/terraform -w /terraform \
   hashicorp/terraform apply
