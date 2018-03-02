#!/bin/sh

echo "Starting ngrok with ${WEBSHOP_URL}"
if [ -z "$WEBSHOP_URL" ]; then
  echo "You must specific the webshop frontend fx sw0001.smartweb.test"
  exit 1
fi

exec ngrok http -region=eu -host-header=${WEBSHOP_URL} ${WEBSHOP_URL}:80
