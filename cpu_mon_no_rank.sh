#!/bin/bash

sbatch cpu_mon_no_rank.sbatch
echo Submitted CPU Usage Monitoring Script...

while true
do
	squeue -u $USER
	echo "Press [CTRL+C] to stop.."
	sleep 0.5
done
