#!/bin/bash

# Print the previous login time of the user guest in the format MMM DD HH:MM:SS. Where MMM, DD, HH, MM and SS corresponds to Month   (E.g. Nov), Date, Hours, Minutes and Seconds respectively. Extract the information from the logs available in the file myauth1.log inthe current directory.

grep "\bsession opened for user guest\b" myauth1.log | tail -1 | cut -d " " -f1-3
