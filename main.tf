provider "aws" {
  version = "~> 2.0"
  region  = "us-west-2"
}

# Network

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "internet_gateway" {
  # VPCGatewayAttachment can be in here
  # See: https://github.com/terraform-providers/terraform-provider-aws/issues/5465
}

resource "aws_route_table" "route_table" {
  
}

resource "aws_route_table_association" "subnet_route_table_association" {
  
}

resource "aws_route" "route" {
  
}

resource "aws_subnet" "subnet" {
  
}

# IAM

data "aws_iam_policy_document" "ecs_service_policy_document" {
  
}

resource "aws_iam_role" "ecs_service_role" {
  name = "ecs_service_role"
  assume_role_policy = "${data.aws_iam_policy_document.ecs_service_policy_document.json}"
}

resource "aws_iam_role" "ec2_role" {
  name = "ec2_role"
  assume_role_policy = <<EOF
EOF
}

resource "aws_iam_instance_profile" "jenkins_ecs_instance_profile" {
  
}

# Security groups

resource "aws_security_group" "jenkins_security_group" {
  
}

resource "aws_security_group" "jenkins_elb_security_group" {
  
}

resource "aws_security_group" "jenkins_efs_security_group" {
  
}

# EFS

resource "aws_efs_file_system" "jenkins_efs" {
  
}

resource "aws_efs_mount_target" "jenkins_efs_mount_target" {
  
}

# Load balancer

resource "aws_lb" "jenkins_elb" {
  
}

# ECS

resource "aws_ecs_cluster" "jenkins_cluster" {
  
}

resource "aws_ecs_task_definition" "jenkins_master_task_definition" {
  
}

resource "aws_ecs_service" "jenkins_ecs_service" {
  
}

data "aws_launch_configuration" "jenkins_ecs_launch_configuration" {
  
}

# Autoscaling

resource "aws_placement_group" "jenkins_ecs_autoscaling" {
  
}

resource "aws_autoscaling_policy" "jenkins_cluster_scale_up_policy" {
  
}

resource "aws_cloudwatch_metric_alarm" "jenkins_cluster_scale_up_alarm" {
  
}

resource "aws_autoscaling_policy" "jenkins_cluster_scale_down_policy" {
  
}

resource "aws_cloudwatch_metric_alarm" "jenkins_cluster_scale_down_alarm" {
  
}
