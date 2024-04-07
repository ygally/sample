#!/bin/bash

curl --silent --head localhost:3000 \
	| head -1 \
	| grep -q '200 OK'

exit
