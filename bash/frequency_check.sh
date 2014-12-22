#!/bin/bash
grep -n 10.1.117.101 access.log| grep index.jsp | awk -F'\t' '$8 == 521 {print $0}' |tail
less +196538 -N access.log
