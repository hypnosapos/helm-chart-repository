# Visdom

Deploy visdom

## Prerequisites Details

* Kubernetes 1.6+

## Chart Details
This chart will do the following:

* Deploy visdom as kubernetes deployment resource

## Installing the Chart

To install the chart type:

```bash
$ helm install --name visdom hypnosapos/visdom
```

## Configuration

The following table lists the configurable parameters.

|         Parameter         |           Description             |        Default    |
|---------------------------|-----------------------------------|-------------------|
| `project`       | Project name | `Cartpole RL Remote Agent` |
| `name`          | Name of deployment  |  `keras-cartpole`       |
| `oauth_key`     | OAuth key           | `oauth_key`   |
| `oauth_secret`  | OAuth Secret        | `oauth_secret`          |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.