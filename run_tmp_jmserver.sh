#!/bin/sh

if [ ! -d "/tmp/jmeter-tmp" ]; then
	mkdir /tmp/jmeter-tmp
fi
cd /tmp/jmeter-tmp
~/load_tests/apache-jmeter-3.0/bin/jmeter-server &
tail -f /tmp/jmeter-tmp/jmeter-server.log
