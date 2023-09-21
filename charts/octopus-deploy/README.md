# Octopus Deploy Helm Chart
This chart is a customized version of the [Official Octopus Deploy Chart](https://github.com/OctopusDeploy/helm-charts/tree/main/charts/octopus-deploy). 

The following changes have been made:

* Remove Secret from the Chart
* Add Deployment, Service and PVC for the `database` to the Chart

## Prerequisites

By removing Secret manifest from the Chart, it requires the Secret `octopus-deploy-secrets` to be created before Helm deployment.
```
kubectl create secret generic octopus-deploy-secrets \
--from-literal=masterKey='<Your base64 encoding key>' \
--from-literal=adminUsername='<Your admin user name>' \
--from-literal=adminPassword='<Your admin password>' \
--from-literal=dbSaPassword='<Your db sa password>' \
--from-literal=dbConnectionString='Server=octopus-deploy-db-svc,1433;Database=OctopusDeploy;User=sa;Password=<Your db sa password>'
```

> `masterKey` can be generated using `openssh rand -base64 16`

## Usage

1. Add this repo:

    ```sh
    helm repo add khanhph https://raw.githubusercontent.com/khanh-ph/helmcharts/master/
    ```

2. Save the values file from the chart:

    ```sh
    helm show values khanhph/octopus-deploy > octopus-deploy-values.yaml
    ```

3. Open the `octopus-deploy-values.yaml` file in your favorite editor and update the variables to reflect your desired values.

4. Install the chart with your own values file:

    ```sh
    helm install octopus-deploy khanhph/octopus-deploy -f octopus-deploy-values.yaml
    ```