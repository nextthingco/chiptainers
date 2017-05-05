#!/bin/sh

CONTAINER_IMAGE=${CONTAINER_IMAGE:-nextthingco/google_assistant}

FILE1=$1
DIR=$2

if [[ ! $FILE1 ]]; then
	echo ""
	echo "------"
	echo "ERROR!"
	echo "------"
	echo "Please specify a full path to your 'client secret' json file."
	echo "Optional second parameter: Specify the full DIRECTORY that contains any exsisting 'assistant_credentials.json' file."
	echo "See README.md file for specific instructions."
	echo ""
else
	[ -z "$DIR" ] && DIR=$(pwd)/.config
	docker run -v $FILE1:/tmp/client_secret.json -v $DIR:/root/.config -it --privileged --net=host $CONTAINER_IMAGE
fi
