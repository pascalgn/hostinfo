#!/usr/bin/env node

const { env } = require("process");

const express = require("express");

const port = env.HOSTINFO_PORT || 3000;

const app = express();
app.set("json spaces", 2);

app.use((req, res) =>
  res.send({
    env,
    headers: req.headers,
    request: {
      method: req.method,
      client: req.ip,
      host: req.hostname,
      scheme: req.protocol
    }
  })
);

app.listen(port, () => console.log(`Server is listening on port ${port}`));
