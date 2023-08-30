#!/usr/bin/env bash

for file in ${HOME}/Documents/handshakes/*; do
	echo "Checking ${file}"
	s=$(echo 1 | aircrack-ng ${file})
	if [[ "${s}" =~ "No networks found" ]]; then
		echo "${file} faulty, deleting..."
		rm ${file}
	fi
done
exit 0
