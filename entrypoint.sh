#!/bin/bash
set -e

if [ "$1" = 'confd' ]; then
	exec "$@"
fi

exec "$@"
