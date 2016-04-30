#!/bin/bash

awk '{print NR " " $1}' elenco.txt > elenco2.txt
