resource "aws_vpc" "k8s-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = "${
    map(
      "Name","k8s-vpc",
      "kubernetes.io/cluster/${var.cluster-name}", "shared",
    )
  }"
}
