#!/bin/bash

<<usage
create functions for 
- RAM used
- Storage used
- Top Process
usage

check_memory(){
	free -h | awk ' NR==2 { print $7 }'
}

check_storage(){
	df -h | awk ' NR==2 { print $4 }'

}

check_most_mem_consuming_process(){
	ps aux --sort=-%mem | awk 'NR==2 { print $1,$2,$4 }'
}

show_details(){
	echo "Available Memory"
	check_memory

        echo " "
	echo "Available Storage"
	check_storage

	echo " "
	echo "Most memory consuming process"
	check_most_mem_consuming_process

}

show_details

