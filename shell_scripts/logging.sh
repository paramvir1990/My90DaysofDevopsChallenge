#!/bin/bash

logging(){
	MESSAGE="Random Number is $RANDOM"
	logger -i -p user.info "$MESSAGE"
}

logging
logging
logging
logging


cat /var/log/syslog | tail -4
