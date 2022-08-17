DevOps Lifecycle with AWS: 3 Days 
In this project, you’ll be creating the infra using terraform and will perform
application/tool stack configuration using shell scripts and will effectively
use Jenkins for running automated CICD for both the application and infra
deployment. Provisioning a managed EKS cluster and setting up a mutable
environment setup which ensures the HA and Resilience of the application. 

Post-Mortem SRE Scoped Project: 
Install and configure the monitoring tool stack (Splunk and Dynatrace) to
monitor the Application and Infra which is very essential for every
production software system.

--------------------------------------------------------------------------------

Outline:
1. Set-up jenkins
2. Create jenkinsfile with 3 steps
   1. Build docker file
   2. Run terraform to set-up cluster
   3. Push docker images to cluster

The docker file contains the app, dynatrace agent, and splunk forwarder
Terraform sets up a managed EKS cluster

bonus: create job that tears it all down