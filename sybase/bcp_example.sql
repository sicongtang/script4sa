source sybase.env

bcp temp_reference..temptable in /tmp/sqlplus.log -b5000 -Uusername -Ppassword -Sserver_alias -t',' -c
bcp temp_reference..temptable out /tmp/sqlplus.log -b5000 -Uusername -Ppassword -Sserver_alias -t',' -c
