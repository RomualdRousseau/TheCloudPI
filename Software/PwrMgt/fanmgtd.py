#!/usr/bin/env python

import RPi.GPIO as GPIO
import subprocess
import os
from time import sleep

FAN_PIN = 4
MIN_SPEED = 30
MAX_SPEED = 100
TEMP_MAX = 45

def getcputemp():
	fo = open("/sys/class/thermal/thermal_zone0/temp")
	str = fo.read()
	fo.close()
	return eval(str) / 1000

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(FAN_PIN, GPIO.OUT)
fan = GPIO.PWM(FAN_PIN, 100)
fan.start(MIN_SPEED)

iError = 0
dError = 0
lastError = 0

while True:
	error = getcputemp() - TEMP_MAX

	# Integrate error
	if error < 1.0:
		iError = 0.0	
	else:
		iError += error
	
	# Devirate error
	dError = error - lastError
	lastError = error
	
	pid = 30 * error + 3 * iError + 5 * dError
	if pid < MIN_SPEED:
		pid = MIN_SPEED
	if pid > MAX_SPEED:
		pid = MAX_SPEED

	fan.ChangeDutyCycle(pid)

#	print(error, pid)

	sleep(5)	

GPIO.cleanup()

