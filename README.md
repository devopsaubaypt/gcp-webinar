# gcp-webinar

## Github Actions

1. `terraform_build.yml`   
It is responsible for carrying out the creation of environment resources according to the specified rules.   
<br>

### Secrets

**secrets.GCP_SA_KEY :** Is the value of Service Account key (json value)  


## To use with service account
### Configure the variables with respective values  


To use service account use this command informing the json file: 
```bash
export GOOGLE_APPLICATION_CREDENTIALS=<PATH_TO_JSON_SA_KEY>
```

## Variables
All values of variables can be used on terraform.tfvars file


## Commands for manual execution of Terraform

```bash
# initialize the Terraform
terraform init
# validate the sintax
terraform validate
# see the execution plan result
terraform plan
# apply the execution
terraform apply
```