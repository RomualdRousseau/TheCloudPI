#!/usr/bin/env python

import RPi.GPIO as GPIO
import subprocess

def getcputemp():
	fo = open("/sys/class/thermal/thermal_zone0/temp")
	str = fo.read()
	fo.close()
	return eval(str) / 1000

print getcputemp()

