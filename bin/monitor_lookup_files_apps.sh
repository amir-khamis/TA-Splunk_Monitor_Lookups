#!/bin/bash
find /opt/splunk/etc/apps -maxdepth 3 -path '*/lookups/*' -name "*.csv" | xargs du -sb | grep -v "^0" | sort | awk -F "/" '{"date \"+%m-%d-%Y %H:%M:%S.%3N %z\""| getline date; print date, "INFO", "app="$6, "file_name="$8, "file_size="$1}'
