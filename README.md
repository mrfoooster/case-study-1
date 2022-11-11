# For the following case study two different paths have been selected.
# Test branch is used to deploy into a Digital Ocean droplet. 
# Production branch is used to deploy into a local kubernetes cluster,
# For both of the processes a basic react.js file has been created and used.

# React.js creation: npm init react-app my-app
# A Dockerfile will be created in the terminal and based on alpine, an image will be produced.
# Files will be put in a gitlap repository

Digital Ocean test requirements: A digital ocean account, SSH key
Branch: Test
By using  ' ssh-keygen ' in terminal we can acquire a private(ssh_key) and public ssh keys(ssh_key.pub).
Before creating the digital ocean droplet, public key will be added as a variable to the account. 
Afterwards, it will be selected during droplet creation. 
After droplet is created, its ipv4 adress is needed. this adress is different for every droplet.

By using " ssh -i <ssh_key location> root@ipv4 (we acquired from droplet) we can access the droplet from our terminal
Install docker:  apt-get install docker.io
Finally: exit

We will copy our ssh_key(private) to the gitlab CI/CD variable section. This variable will be used in pipeline to deploy the docker image into the droplet.

Minikube Requirements: kubernetes, docker, 
Branch: production
Following command lines will be used in order to install docker and kubernetes:

-   sudo apt-get install docker.io
-   docker --version
-   sudo systemctl status docker
-   curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
-   sudo apt-get install curl
-   sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
-   sudo apt-get install kubeadm kubelet kubectl
-   kubeadm version
-   swapoff -a
-   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
-   sudo install minikube-linux-amd64 /usr/local/bin/minikube

after all the installations we can activate minikube with " minikube start "

Following commands results are needed to be saved: minikube ip

Then: "minikube ssh"  this line will bring us into the cluster, from we can generate another ssh key with "ssh-keygen" and upload the private version 
to the gitlab. 


