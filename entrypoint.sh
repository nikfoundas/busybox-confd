#!/bin/sh
set -e

if [ "${1:0:1}" = '-' ]; then
	set -- /usr/bin/confd "$@"
fi

if [ "$1" = 'confd' ]; then
	exec "$@"
fi

exec "$@"
