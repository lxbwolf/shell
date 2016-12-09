#!/bin/bash

echo "Current user is: "
echo $(ps | grep "$$" | awk '{ print $2 }')
