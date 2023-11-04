#!/bin/bash
function temperature() {
	sensors | grep -e "temp1.*(" | sed 's/+//' | awk '{print $2}'
}

function upt() {
	uptime | awk -F 'load average.*: ' '{print $2}'
}

function main() {
	s1=`temperature`
	s2=`upt`
	echo $s1 $s2
}

main

