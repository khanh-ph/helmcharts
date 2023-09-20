# Octopus Deploy Helm Chart
This chart is a customized version of the [Official Octopus Deploy Chart](https://github.com/OctopusDeploy/helm-charts/tree/main/charts/octopus-deploy). 

The following changes have been made:

* Remove Secret from the Chart
* Add Deployment, Service and PVC for the `database` to the Chart

## Prerequisites

By removing Secret manifest from the Chart, it requires the Secret `octopus-deploy-secrets` to be created before Helm deployment.
```
kubectl create secret octopus-deploy-secrets \
--from-literal=masterKey=<Your base64 encoding key> \
--from-literal=adminUsername=<Your admin user name> \
--from-literal=adminPassword=<Your admin password> \
--from-literal=dbSaPassword=<Your db sa password> \
--from-literal=dbConnectionString=<Your db connection string>
```

## Usage

1. Install the Chart
    ```sh
    git clone <repo_url>
    cd charts
    helm install octopus-deploy 
    ```

2. Update the Chart
    ```sh
    helm upgrade octopus-deploy
    ```