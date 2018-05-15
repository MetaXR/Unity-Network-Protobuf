#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR
echo
ls
echo $BASEDIR
for name in `ls`
do
	if [ -d "$name" ]
	then :
	else 
		case "$name" in
		*.proto)
			echo -e "$1$name"
			protoc --java_out=../java/ "$1$name"
	  	;;
    *)
    	#echo -e "$1$name"
    	;;
    esac
	fi
done
	
#/usr/bin/open ~/Release/

