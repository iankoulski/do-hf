#!/bin/bash

source .env

if [ "${MODEL_NAME}" == "" ]; then
	echo ""
	echo "MODEL_NAME is required."
	echo "Please ensure it is specified in .env"
	echo ""
else

	CMD="hf download ${MODEL_NAME} --local-dir ${MODEL_PATH}"

	if [ ! "${verbose}" == "false" ]; then
		echo ""
		echo "${CMD}"
		echo ""
	fi

	eval "${CMD}"

fi
