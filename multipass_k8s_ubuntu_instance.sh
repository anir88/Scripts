#Bash script to create a Multipass Ubuntu instance with minukube k8s engine

#!/bin/bash

echo "Running the Ubuntu k8s instance creation with miniukube kubernetes engine"

#Creating a multipass instance

multipass launch -n ubuntuk8s1;multipass start ubuntuk8s1;

#Logging into the ubuntu instance and installing the minukube k8s engine

multipass -vvv exec ubuntuk8s1 -d /home/ubuntu -- bash -c 'curl -LO https://github.com/kubernetes/minikube/releases/latest/download/minikube-linux-arm64 && sudo cp minikube-linux-arm64 /usr/local/bin/minikube && sudo chmod +x /usr/local/bin/minikube && minikube version && which minikube && exit'