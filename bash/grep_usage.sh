#!/bin/bash
##grep binary log file
##search ^D whose unicode is \x04
grep -UaP "req_id\x040a010795-14a6ec15c4a-ba509" tracelog.log.2014-12-22.05
