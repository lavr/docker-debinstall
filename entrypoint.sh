#!/bin/sh

cd /target || exit 1

apt-get update

for i; do (
	set -e
	dpkg -i $i;
	apt-get install -f -y;
	dpkg -i $i;
)
done
