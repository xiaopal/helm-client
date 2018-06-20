#!/bin/bash

BASENAME="$(basename $0)"
EXECUTABLE="${BASENAME^^}_EXECUTABLE" && EXECUTABLE="${!EXECUTABLE}"
EXECUTABLE_OPTS="${BASENAME^^}_OPTS" && EXECUTABLE_OPTS="${!EXECUTABLE_OPTS}"
[ ! -z "$EXECUTABLE" ] && [ -x "$EXECUTABLE" ] || {
    echo "$BASENAME: command not found" >&2
    exit 127
}
exec "$EXECUTABLE" $EXECUTABLE_OPTS "$@"