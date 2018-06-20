#!/bin/bash

[ -d /etc/entrypoint.d ] && {
    for INIT in /etc/entrypoint.d/*.sh; do
        [ -f "$INIT" ] || continue
        echo "loading $INIT..." >&2
        . "$INIT" || exit 1
    done
}
echo "$*" >&2 && exec "$@"