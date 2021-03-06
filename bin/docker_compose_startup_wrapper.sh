#!/bin/bash
set -ex

/usr/src/scripts/wait_for_mysql.sh

export LOCAL_DOCKER_COMPOSE_MODE=1

echo start bundle install
bundle install --path=vendor/bundle

echo start yarn install
bin/rails webpacker:yarn_install

bin/start_server.sh

