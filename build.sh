#!/bin/sh

jq --stream 'select(.[1] != null) | flatten | join(".") | "--\(.)" | sub("\\.(?<x>[^.]+)$"; "=\(.x)")' /themes/pace.json  | xargs redoc-cli bundle -o $1 $2 -t /themes/pace.hbs
