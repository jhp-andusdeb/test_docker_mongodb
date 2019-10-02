#!/bin/sh
docker-compose ps | grep mongo | awk '{print "docker inspect "$1" | egrep \"Name|IPA\"" }' | sh
