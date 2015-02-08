--1 system functions
--col_length
select x = col_length("titles", "title")
--isnull
select avg(isnull(price,$10.00))

--2 string function
select "The price is " + convert(varchar(12),price) from titles
--charindex/patindex
select charindex("wonderful", notes), patindex("%wonderful%", notes) from titles where title_id = "TC3218"
--substring
select x = substring("abcdef", 2, 3)
--ltrim/rtrim
--upper/lower


--3 date function
--getdate
select getdate()
--datepart 1989
select datepart(cyr, "1/1/1989")
--datediff
select datediff (yy, "1984", "1997")
--dateadd
select dateadd (dd, 16, "1997/06/16")
--convert date to string
select convert(char(26), getdate(), 109)