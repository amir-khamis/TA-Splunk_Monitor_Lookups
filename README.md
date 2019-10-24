# TA-Splunk_Monitor_Lookups
Lookup Table File Size Collection to monitor for any rogue lookup files created by users which may have a negative effect on the bundle

Deploy the TA to all Splunk Search Heads.
Make sure files under TA-Splunk_Monitor_Lookups/bin has the right permissions, execute chmod u+x to allow them to run.

Use the two example reports included to get started and build an alert of your liking.
I recommend starting by monitoring files greater than 100MB but make sure to exclude the following to get started:
assets.csv
identities.csv
administrative_identities.csv
assets_by_cidr.csv
categories.csv
identities_expanded.csv

You might want to exclude other lookups or you can exclude by App.
