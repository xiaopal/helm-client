#!/bin/bash

[ -d /etc/home-settings ] && {
    cp -r -T /etc/home-settings $HOME || exit 1
}
exec "$@"