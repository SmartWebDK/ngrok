#!/bin/sh

if [ -z "$WEBSHOP_URL" ]; then
  echo "You must specific the webshop frontend fx sw0001.smartweb.test"
  exit 1
fi

if [ -n "$NGROK_AUTH" ]; then
    echo "Starting ngrok with ${WEBSHOP_URL} and auth token"
    exec ngrok http -authtoken=${NGROK_AUTH} -region=eu ${WEBSHOP_URL}:80
else
    echo "Starting ngrok with ${WEBSHOP_URL}"
    exec ngrok http -region=eu ${WEBSHOP_URL}:80
fi