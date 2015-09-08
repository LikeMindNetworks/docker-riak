#!/usr/bin/env bash

exec $(ls -d /usr/lib/riak/erts*)/bin/run_erl \
	"/tmp/riak" \
	"/var/log/riak" \
	"exec /usr/sbin/riak console"
