#!/bin/bash
# Author: Brett Papenfuss
# Date: 2/2/2019

# Problems 1 and 2: Accept a regex and file name from the user
echo "Please enter an expression to search for: $1"
echo "Please enter a file name to search: $2"
grep $1 $2
# Echo gives the user a line of text, $0 and $1 are command line arguments for the user to input, grep searches for $0 in $1

# Problem 3: Hardcoded grep commands
echo "The number of phone numbers is: "
grep -o '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt | wc -l
# searches for numbers of the form xxx-xxx-xxxx 

echo "\nThe number of emails is: "
grep -o '@' regex_practice.txt | wc -l
# Looks for at signs


grep -o '[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}' regex_practice.txt > phones.txt 
grep -o '303.........' phones.txt > phone_results.txt
# creates a text file of phone numbers then searches that file for 303 

grep '@geocities.com' regex_practice.txt > email_results.txt
# stores geocities emails in a text file

grep $1 $2 > command_results.txt
#stores results from command line search in a text file 
