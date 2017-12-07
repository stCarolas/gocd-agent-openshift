#! /bin/sh
#
# up.sh
# Copyright (C) 2017 stcarolas <stcarolas@homeGround>
#
# Distributed under terms of the MIT license.
#

docker build . -t gocd-agent-openshift:latest
docker run -d -e GO_SERVER_URL=https://172.17.03:8154/go gocd-agent-openshift:latest
