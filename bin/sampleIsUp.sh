#!/bin/bash

NC="\\033[0;39m"
GREEN="\\033[1;32m"
RED="\\033[1;31m"
BLUE="\\033[1;36m"

curl --silent --head localhost:3000 \
		| head -1 \
		| grep -q '200 OK' \
|| {
	echo >&2 -e "${RED}Site does not respond with HTTP 200 status code${NC}"
	false
}

exit
