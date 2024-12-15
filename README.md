# kubernetes-poc-test

AWS eks terraform manifests to deploy an EKS cluster on private subnet.

The state file is set to be stored in an S3 bucket ( you woudl want to use dynamodb or similar tools to implement a lock on the file).

The AWS folder includes all envs and modules required to deploy the AWS resources.

Initiate the terraform project with     
`terraform init -backend-config=backend.hcl`     

Check terraform code    
`terraform validate -var "account_id=<yourawsaccount>"`     

Apply manifests   
`terraform plan -var "account_id=<yourawsaccount>"`    

Upon TF deploymnet completion, confgiure your kubectl config file    
`aws eks update-kubeconfig --region eu-west-2 --name poc-eks`    


## Notes

Missing proper AZ affinity   
Missing proper cluster roles   
Global set of files to be used across all envs   
The Github action workflow is not completed 