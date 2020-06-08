## How to use

```console
$ docker run -it proofninja/tezos-mockup-client:7.1 bash
opam@45b3dfc63dc1:~/opam-repository$ mockup-client list known addresses
```

## Docker Build

```console
$ docker build --tag proofninja/tezos-mockup-client:7.1 --build-arg TEZOS_VERSION=7.1 .
$ docker push proofninja/tezos-mockup-cleint:7.1
```
