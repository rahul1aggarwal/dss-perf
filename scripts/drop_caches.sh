#!/bin/bash

while [ : ]
do
    sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
    sleep 9
done

