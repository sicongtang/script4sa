##
sed -n 16224,16482p filename > newfile
##If the file is huge, it can be good to exit after reading the last desired line. This way it won't unnecessarily read the file until to the end:
awk 'NR==16224, NR==16482-1; NR==16482 {print; exit}' filename > newfile
