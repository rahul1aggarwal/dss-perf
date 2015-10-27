#!/bin/bash
for i in `mount | grep osd | awk '{print $3}'`
do 
	echo $i
	sudo fio --name=write  --iodepth=1 --rw=randwrite --bs=4M --direct=1 --size=10G --numjobs=1 --group_reporting --filename=$i/delete-this  | grep bw &
done
