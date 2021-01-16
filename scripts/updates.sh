#!/bin/bash

#Check for the updates
updates=$(checkupdates | wc -l);

#if there are updates, send a notification
if [ $updates -ne 0 ] 
then
	echo "$updates updates available";
fi
