#!/bin/bash

while read line
do
    for domain_name in $line
    do
      echo "domain_name ='$domain_name'"
      dnstwist -t 1000  "$domain_name" -f list | sed '1d'  >> fakedomain.list
    done
done < originaldomain.list
