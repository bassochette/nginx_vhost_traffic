#!/bin/bash

extFile=$1
confFolder=$2
grepKey="START_SUBDOMAIN"


if [ -f $extFile ]; then
	rm -rf $extFile
fi

touch $extFile

for f in $confFolder;
do
	cat $f | grep $grepKey | cut -d"=" -f2 | cut -d"#" -f1 >> $extFile
done