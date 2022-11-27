#!/bin/bash
object=$1
key=$2
check1=$(cat nestjson | jq .$object.$key)
echo $check1

# if considering it as a function
#function nested(){
#    object=$1
#    #key = $2
#    check1=$(cat nest.json | jq .$object.$key)
#    echo $check1
#}

#nested

