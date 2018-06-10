#!/bin/sh -x
service=$(connmanctl services | awk {'print($3)'})
connmanctl disconnect $service
connmanctl connect $service
