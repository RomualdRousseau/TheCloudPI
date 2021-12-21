#!/usr/bin/env python

import RPi.GPIO as GPIO
import subprocess
import os
from time import sleep

FAN_PIN = 4

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(FAN_PIN, GPIO.OUT)
fan = GPIO.PWM(FAN_PIN, 100)
fan.start(100)

sleep(5)

GPIO.cleanup()

