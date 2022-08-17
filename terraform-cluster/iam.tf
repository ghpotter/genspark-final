data "aws_iam_policy_document" "ecs_agent_policy_doc" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com", "eks.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "ecs_agent_role" {
  name               = "ecs-agent-role"
  assume_role_policy = data.aws_iam_policy_document.ecs_agent_policy_doc.json
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy_attachment" {
  role       = aws_iam_role.ecs_agent_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "eks_worker_policy_attachment" {
  role       = aws_iam_role.ecs_agent_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "ec2_container_policy_attachment" {
  role       = aws_iam_role.ecs_agent_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_instance_profile" "ecs_agent_profile" {
  name = "ecs-agent"
  role = aws_iam_role.ecs_agent_role.name
}