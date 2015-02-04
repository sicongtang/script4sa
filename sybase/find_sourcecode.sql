---find the store procedure related to specified table
select distinct object_name(id) from dbname..syscomments where lower(text) like '%tablename_in_your_store_procedure%'

--find the store procedure in db, given a text string that appears in the procedure
select distinct (object_name(id) from syscomments where texttype = 0 and text like '%your_string%'
select distinct (object_name(id) from syscomments where texttype = 0 and lower(text) like '%your_variable%'
