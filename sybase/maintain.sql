---
select distinct name from sysobjects where type = 'U' order by name
declare @v_tablename varchar(50)
declare acti_cur cursor for select top 10 distinct name from sysobjects where type = 'U' order by name
open acti_cur
fetch acti_cur into @v_tablename
  while(@@sqlstatus =0)
  begin
    exec sp_spaceused @v_tablename
    fetch acti_cur into @v_tablename
  end
close acti_cur
deallocate cursor acti_cur


---
dump transcation reference with truncate_only
go
dump transcation reference with no_log
go

---
select l.spid,
       locktype = convert(char(12), name),
       dbname = convert(char(15), db_name(l.dbid)),
       'table' = convert(char(30), object_name(l.id, l.dbid)),
       page,
       class = convert(char(15), class),
       hostname,
       cmd
from master..syslocks l, master..spt_values, master...sysprocesses p
where l.type = v.number and
      v.type = 'L' and
      l.spid = p.spid
order by spid

---
select hostname, count(*) from master..sysprocesses group by hostname

---
dbname..sp__segmentused
select @@servername,getdate()
sp_helpdb dbname
