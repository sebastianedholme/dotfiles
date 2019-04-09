#!/bin/bash

#Find the xinput id number for touchpad and set variable 

idd=$(xinput --list | grep 'Touchpad' | awk '{print $6}'| cut -d'=' -f2)


# Run xinput and set tap to click device idd
xinput set-prop $idd 280 1
