#!/bin/bash

{
	curl --no-progress-meter --head localhost:3000 2>&1 \
		|| echo 'OFF'
} | grep -q 'OFF'

exit
