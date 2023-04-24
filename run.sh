#!/usr/bin/env bash
set -e
set -x
[ -z "$APP_HOME" ] && export APP_HOME=$(pwd)
[ -z "$PORT" ] && export PORT="8080"

cd homer
python -m http.server $PORT
