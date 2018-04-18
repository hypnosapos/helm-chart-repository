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


|         Name         |        Default    |
|----------------------|-------------------|
| `PORT`               | 8097              |
| `ENV_PATH`           | $HOME/.visdom     |
| `LOGGING_LEVEL`      | INFO              |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.