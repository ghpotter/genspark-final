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
Set-up jenkins
 - create 3 jenkins jobs
 - 1 build docker file
  - Docker file contains app, and fowarders for splunk and dynatrace
  - Build docker when change to source code
 - 2 run terraform to set-up cluster
 - 3 push docker images to cluster

bonus: create job that tears it all down