#!/bin/bash

# Replace Concourse URL and DNS resolver from the env variables

envsubst '$CONCOURSE_URL $RESOLVER' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
