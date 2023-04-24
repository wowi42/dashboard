#!/usr/bin/env bash
set -e
set -x
[ -z "$APP_HOME" ] && export APP_HOME=$(pwd)
[ -z "$PORT" ] && export PORT="8080"

rm -rf homer
mkdir homer
cd homer
wget https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip

unzip homer.zip
cp ../config.yml assets/config.yml
cp -r ../tools/* assets/tools/


