# Khanhph's Helm Charts

Welcome to my personal collection of Helm charts. These charts have been customized with care for my development and testing purposes.

## Prerequisites

* Kubernetes 1.x+
* Helm v3.x+

## Usage

1. Add this repo:

    ```sh
    $ helm repo add khanhph https://raw.githubusercontent.com/khanh-ph/helmcharts/master/
    ```

2. Install a chart from this repo:

    ```sh
    $ helm show values khanhph/[CHART_NAME] > myValues.yaml
    ```

    ```sh
    $ helm install [YOUR_APP_NAME] khanhph/[CHART_NAME] -f myValues.yaml
    ```

## Extra Setup Guidance

### Setting up Minikube for local testing (Mac OS)

1. Install Minikube:
    ```sh
    $ brew install minikube --driver=docker
    ```

2. Start Minikube:
    ```sh
    $ minikube start
    ```

3. Once you're done with the tests, stop Minikube:
    ```sh
    $ minikube stop
    ```
    If you prefer to do a cleanup, try below steps:
    ```sh
    $ minikube delete
    $ sudo rm -rf /usr/local/bin/minikube
    $ brew uninstall minikube
    $ rm -rf ~/.minikube
    ```