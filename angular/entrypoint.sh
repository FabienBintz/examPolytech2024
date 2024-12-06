#!/bin/sh

sed -i 's|http://1.2.3.4:8448|'"$BACKEND_URL"'|g' /usr/share/nginx/html/*.js

exec "$@"