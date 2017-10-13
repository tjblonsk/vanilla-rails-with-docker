#!/usr/bin/env bash

docker-compose -f scripts/docker/compose/development.yml stop
docker-compose -f scripts/docker/compose/development.yml rm -v -f