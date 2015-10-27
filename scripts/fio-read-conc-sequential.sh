#!/bin/bash
for i in `mount | grep osd | awk '{print $3}'`
do 
	echo $i
	sudo fio --name=read  --iodepth=1 --rw=read --bs=1G --direct=1 --size=10G --numjobs=1 --group_reporting --filename=$i/delete-this  | grep bw &
done
