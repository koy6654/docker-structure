#!/bin/bash
set -euo pipefail

index=$1

if [ "${index}" = "index.js" ]; then
	while true; do
		set +e
		npx nodemon ${index}

		ret=$?

		if test -e /tmp/restart-trigger; then
			echo "restart-trigger occured with exit code $ret" >&2
			sleep 1
			continue
		fi
		
		echo "exit with code ${ret}"
		exit $ret
	done
else
	echo "wrong argument to docker-entrypoint.sh"
fi

echo "command: npx nodemon ${index}"

