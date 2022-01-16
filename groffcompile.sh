#!/bin/sh

if [[ $1 =~ \.xy$ ]];
then 
	name=`echo $1 | cut -d '.' -f1`
	echo "Correct file entered $1"
	groff -ms $1 > "$name.ps"
	ps2pdf "$name.ps"
	rm "$name.ps"
else echo "Wrong file entered $1"
fi


