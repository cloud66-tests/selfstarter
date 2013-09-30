#!/bin/bash
FILE=/tmp/seed_done

if [ -f $FILE ]
then
	echo "File $FILE exists..."
else
	cd $RAILS_STACK_PATH
    rake db:seed
    touch /tmp/seed_done
fi