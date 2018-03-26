#import the library
from pyA20.gpio import gpio
from pyA20.gpio import port
from time import sleep

#initialize the gpio module
gpio.init()

port = port.PA7
#setup the port (same as raspberry pi's gpio.setup() function)
gpio.setcfg(port, gpio.OUTPUT)

#now we do something (light up the LED)
gpio.output(port, gpio.HIGH)

#turn off the LED after 2 seconds
sleep(3)
gpio.output(port, gpio.LOW)



