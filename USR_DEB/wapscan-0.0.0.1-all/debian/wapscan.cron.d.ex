#
# Regular cron jobs for the wapscan package
#
0 4	* * *	root	[ -x /usr/bin/wapscan_maintenance ] && /usr/bin/wapscan_maintenance
