#!/bin/sh

sed -i "s/PUBLIC_SECURE_DOMAIN/$PUBLIC_SECURE_DOMAIN/g" /etc/nginx/conf.d/default.conf

# This will exec the CMD from your Dockerfile, i.e. "npm start"
exec "$@"
