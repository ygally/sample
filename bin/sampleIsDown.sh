#!/bin/bash

NC="\\033[0;39m"
GREEN="\\033[1;32m"
RED="\\033[1;31m"
BLUE="\\033[1;36m"

{
	curl --no-progress-meter --head localhost:3000 2>&1 \
		|| echo 'OFF'
} | grep -q 'OFF' \
	|| {
		echo >&2 -e "${RED}Site seems not to refuse connection${NC}"
		false
	}

exit
