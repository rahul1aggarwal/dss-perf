#!/bin/bash
for i in `mount | grep osd | awk '{print $3}'`
do 
	echo $i
	sudo dd of=/dev/zero if=$i/delete-this bs=1G count=9 iflag=direct & 
done
