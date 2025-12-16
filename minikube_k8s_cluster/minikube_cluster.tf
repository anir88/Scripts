#Terraform code to create a 4 node kuubernetes cluster based on Minikube

terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
      version = "0.6.0"
    }
  }
}
provider "minikube" {
    kubernetes_version = "v1.30.2"
}

resource "minikube_cluster" "my_cluster1" {
    cluster_name = var.cluster_name
    nodes = 4
    memory = "4000mb"
    cpus = 2
    addons = ["metrics-server", "dashboard","default-storageclass","ingress"]
  
}

