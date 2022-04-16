#!/bin/bash

cat FILE.svg | grep "somtehing" | cut -d ">" -f2 | cut -d "<" -f1 | tr -d "\n" | tr -d " "

