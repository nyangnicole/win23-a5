#!/usr/bin/env bash
# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1
echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."
echo "Invoke your program with the \$CALCULATOR variable; an example is below"
# Test 01: Ensure the program has correct output for subtraction
if [[$($CALCULATOR 5 - 2) -ne 3 ]]; then
   echo 'ERROR! A valid run of the calculator (5 - 2) failed to produce 3 as an output!' 
   exit 1 
fi 

#Test 02: Ensure the program has correct output for division 
if [[$($CALCULATOR 15 / 3) -ne 5]]; then 
   echo 'ERROR! A valid run of the calculator (15 / 3) failed to produce 5 as an output!
   exit 1 
fi 

