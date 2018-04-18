# Helm Charts

Build or update your own helm chart repository.

# Add the repository

## Requirements

To install hypnosapos artifact on your k8s env is required to have seldondeployment resources

In order to add the repository to your helm utility type:

```sh
$ helm repo add hypnosapos https://hypnosapos-charts.storage.googleapis.com
```

We provide a custom repo file to configure your helm with the needed repositories, to use that enter:

```sh
$ helm install hypnosapos/cartpole-rl-modele -f repos.yml
```