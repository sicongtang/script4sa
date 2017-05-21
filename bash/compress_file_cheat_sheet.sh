##Refer to: https://www.cyberciti.biz/howto/question/general/compress-file-unix-linux-cheat-sheet.php
##Compressing files
gzip {filename}
bzip2 {filename}	
zip {.zip-filename} {filename-to-compress}	
tar -zcvf {.tgz-file} {files}             ##-z: use gzip compress
tar -jcvf {.tbz2-file} {files}            ##-j: use bzip2 compress	

##Decompressing files

gzip -d {.gz file}
gunzip {.gz file}
bzip2 -d {.bz2-file}
bunzip2 {.bz2-file}
unzip {.zip file}
tar -zxvf {.tgz-file}
tar -jxvf {.tbz2-file}



