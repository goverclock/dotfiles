#!/bin/bash
function temperature() {
	sensors | grep -e "temp1.*(" | sed 's/+//' | awk '{print $2}'
}

function upt() {
	uptime | awk -F 'load average.*: ' '{print $2}'
}

function main() {
	s1='lol'
	s2=`upt`

	if [[ "$OSTYPE" == "linux-gnu"* ]]; then
		s1=`temperature`
	elif [[ "$OSTYPE" == "darwin"* ]]; then
		s1=''
	else
		echo "~/.tmux/status-right.sh: unknown os"
	fi

	echo $s1 $s2
}

main

