#!/usr/bin/env bash

set -eufm -o pipefail

/usr/local/bin/dockerd-entrypoint.sh &
disown

while true; do
    { docker ps 2> /dev/null && break; } || true
    sleep 0.1
done

exec "$@"
