#!/bin/bash -x
for filelog in `ls *.log`
do 
	base=`echo $filelog | awk -F'.' '{print $1}'`
	ext=`echo $filelog | awk -F'.' '{print $2}'`
	mkdir $base/
	mv $filelog $base/$base-`date +%d-%m-%y`.$ext
done

