#!/usr/bin/env bash

EXECUTOR="${CONTAINERS_EXECUTOR:-docker}"
COMPOSER="${EXECUTOR}-compose"

$COMPOSER exec -it php "$@"
