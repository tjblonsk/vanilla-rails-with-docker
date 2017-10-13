#!/usr/bin/env bash

docker-compose -f scripts/docker/compose/test.yml run --rm web

result=$?

docker-compose -f scripts/docker/compose/test.yml stop
docker-compose -f scripts/docker/compose/test.yml rm -v -f

exit $result
