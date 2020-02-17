#!/usr/bin/env bash

set -eu -o pipefail

/usr/local/bin/dockerd-entrypoint.sh &

while true; do
    { docker ps 2> /dev/null && break; } || true
    sleep 0.1
done

exec "$@"
