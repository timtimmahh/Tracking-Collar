# Uncomment lines below if you have problems with $PATH
#SHELL := /bin/bash
#PATH := /usr/local/bin:$(PATH)

BOARD:=

all:
	platformio -f -c vim run --environment ${BOARD}

upload:
	platformio -f -c vim run --target upload --environment ${BOARD}

clean:
	platformio -f -c vim run --target clean

program:
	platformio -f -c vim run --target program --environment ${BOARD}

uploadfs:
	platformio -f -c vim run --target uploadfs --environment ${BOARD}

update:
	platformio -f -c vim update

init:
	platformio init --ide vim --board ${BOARD}
