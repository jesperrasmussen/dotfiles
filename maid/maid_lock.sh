#!/bin/sh
lockdir=/var/tmp/mylock
pidfile=/var/tmp/mylock/pid

if ( mkdir ${lockdir} ) 2> /dev/null; then
        echo $$ > $pidfile
        trap 'rm -rf "$lockdir"; exit $?' INT TERM EXIT
        # do stuff here
	/usr/local/bin/maid clean -fr ~/.maid/rules.rb

        # clean up after yourself, and release your trap
        rm -rf "$lockdir"
        trap - INT TERM EXIT
else
        echo "Lock Exists: $lockdir owned by $(cat $pidfile)"
fi
