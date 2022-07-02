#!/usr/bin/env bash

set -e
set -o pipefail

docker build -t samba-alpine .
docker run -d --restart unless-stopped \
	--network host \
	"$@" \
	samba-alpine
