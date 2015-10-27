#!/bin/bash
for i in `mount | grep osd | awk '{print $3}'`
do 
	echo $i
	sudo dd if=/dev/zero of=$i/delete-this bs=1G count=9 oflag=direct 
done
