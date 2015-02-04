---explain on store procedure, focus on table scan
set showplan on
go
set fmtonly on
go
exec dbname..spname param1
go

--rebuild index
reorg rebuild tablename
update statistics tablename
