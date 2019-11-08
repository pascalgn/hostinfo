# hostinfo

[![Docker build status](https://img.shields.io/docker/cloud/build/pascalgn/hostinfo.svg?style=flat-square)](https://hub.docker.com/r/pascalgn/hostinfo/)

[Express](https://expressjs.com/) server that displays environment variables and request headers

## Usage

To start the server, run

    $ docker run --rm -d -p 5000:5000 pascalgn/hostinfo

To run in Kubernetes, use

    $ kubectl apply -f examples/kubernetes.yaml

## License

Hostinfo is licensed under the ISC License
