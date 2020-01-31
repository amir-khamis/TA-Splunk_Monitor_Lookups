#!/bin/bash

find /opt/splunk/etc/users -maxdepth 4 -path '*/lookups/*' -name "*.csv" | awk '{print "\""$0"\""}' | xargs du -sb 2> >(grep -v 'Permission denied') | grep -v "^0" | sort | awk -F "/" '{"date \"+%m-%d-%Y %H:%M:%S.%3N %z\""| getline date; print date, "INFO", "user="$6, "app="$7, "file_name="$9, "file_size="$1}'
