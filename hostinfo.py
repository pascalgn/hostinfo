#!/usr/bin/env python

import os
import flask

app = flask.Flask('hostinfo')

@app.route('/')
def hostinfo():
    result = {
        'env': dict(os.environ),
        'headers': dict(flask.request.headers),
        'request': {
            'client': flask.request.remote_addr,
            'host': flask.request.host,
            'scheme': flask.request.scheme
        }
    }
    return flask.jsonify(result)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
