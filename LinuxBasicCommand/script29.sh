#!/bin/bash

# A school teaches from first to twelfth standard, each standard has 5 sections named as 'A' to 'E'.
# The class room number is represented as standard (as number) followed by the section, for example '12E','3C',etc.
# Your task is to create a directory for every classroom in directory.

mkdir {1..12}{A..E}
