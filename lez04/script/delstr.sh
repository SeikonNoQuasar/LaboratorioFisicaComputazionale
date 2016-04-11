#!/bin/bash
stringZ=Alessandro
#       |----|          shortest
#       |----------|    longest

echo ${stringZ#Ales}      # 123ABCabc
# Strip out shortest match between 'a' and 'C'.

echo ${stringZ##a*C}     # abc
# Strip out longest match between 'a' and 'C'.
