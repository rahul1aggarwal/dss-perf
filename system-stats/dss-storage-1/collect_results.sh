#!/bin/bash
ifstat > $1/nw.log &
mpstat 1 > $1/cpu.log &
pidstat -C "osd|ceph" -l 1 > $1/ceph.log &
free -m -s 1 > $1/mem.log & 

