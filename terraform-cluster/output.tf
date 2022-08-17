output "cluster_host" {
  value = aws_eks_cluster.eks_cluster.endpoint
}