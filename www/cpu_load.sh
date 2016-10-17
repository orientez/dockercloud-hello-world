#!/bin/sh

sha1sum /dev/zero &
pid=$!
sleep 1
kill $pid

