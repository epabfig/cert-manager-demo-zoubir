DEMO - CERT-MANGER/LET'S ENCRYPT
==================
## Project setup 
### Set the environment variable and config for the gcp project
```
export student_name=<STUDENT_NAME>
export ORG=<ORG>
export PRODUCT=<PRODUCT>
export ENV=<ENV>
export PROJECT_ID=<project-id>
gcloud config set project $PROJECT_ID
```


### Deploy GKE cluster
```
cd gke-infra
terraform init
terraform plan -var-file terraform.tfvars
terraform apply -var-file terraform.tfvars
gcloud container clusters get-credentials gke-$ORG-$PRODUCT-$ENV --region us-central1
```

## STATIC IP ADDRESS RESERVATION:
### Create
```
gcloud compute addresses create myapp-nginx-service-web-ip --project=$PROJECT_ID --global
```
### List
```
gcloud compute addresses list
```
Using A DNS server ( Cloud DNS/ google Domain) create a records with a choosen DNS name and assign to the reserved straic address. Replace the <DNSNAME> placeholder with the value of  new created dnsname in :
- myapp/certificates/certificate-staging.yaml
- myapp/deployment/myapp-staging.yml
  
  
### Deploy  CERTMANAGER using Helm
### Update Helm Repo
```
helm repo add jetstack https://charts.jetstack.io
helm repo update
```
### Instal certmanager
```
helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --create-namespace \
  --version v1.10.0 \
  --set installCRDs=true
```
### List cert-manager deployment
```
helm list -n cert-manager
```
## Create and Deploy certifacate artifacts
### deploy and list Cluster issuer
```
kubectl apply -f letsencrypte 
kubectl get ClusterIssuers --all-namespaces
```
### Create Myapp-ns namespace.
```
kubectl apply -f /myapp/namespace.yaml
```

### Deploy certificate
```
kubectl apply -f myapp/ertificates/certifcate-staging.yml
```
### List certtmanager resources
```
kubectl get Certificates,CertificateRequests,Orders,Challenges --all-namespaces
```
### Deploy myapp application
```
kubectl apply -f myapp/deployment
```
### List and describe certificate
```
kubectl get certifcates -n myapp-ns
kubectl describe certifcates -n myapp-ns
```
Access the applcation throgh the browser and check the certificate.
## Cleanup
```
kubectl delete-f /my-app/certificates
kubectl delete -f /my-app/deployment
kubectl delete -f /myapp/namespace.yaml
kubectl delete -f letsencrypte
helm uninstall   cert-manager  --namespace cert-manager
```