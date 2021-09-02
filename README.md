# docker-iperf3

iPerf3 Server Container

## Configuration options

See [Dockerfile](Dockerfile#L4)

## How to use

```sh
$ docker run \
    --restart=always \
    -d \
    -p 5201:5201 \
    -p 5201:5201/udp \
    julianxhokaxhiu/docker-iperf3
```
