use UNIVER;
go
create table #temp (id int, value int, square int);
declare @i int = 1;
while @i <= 10
begin
    insert into #temp (id, value, square) values (@i, @i * 10, @i * @i);
    set @i = @i + 1;
end;
select * from #temp;
drop table #temp;