# hostinfo

Flask server that displays environment variables and request headers

## Usage

To start the server locally, just run

    $ ./hostinfo.py

For running a Docker container, use

    $ docker run -d -p 5000:5000 pascalgn/hostinfo

To run in Kubernetes, use

    $ kubectl apply -f examples/kubernetes.yaml

If you want to use Helm to run it, use

    $ helm install charts/hostinfo/

## License

Hostinfo is licensed under the ISC License
