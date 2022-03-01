<!-- USAGE EXAMPLES -->
## Usage

1. Add this repo
```sh
helm repo add khanhphd https://raw.githubusercontent.com/khanhphd/helmcharts/master/
```

2. Install chart from this repo
```sh
helm show values khanhphd/sample > myValues.yaml
# Enter your own values by editting myValues.yaml
helm install your-sample-app khanhphd/sample -f myValues.yaml
```