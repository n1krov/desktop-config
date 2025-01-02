#!/bin/bash

echo "󰛳 $(ifconfig wlp2s0 | grep "inet " | awk '{print $2}')"
