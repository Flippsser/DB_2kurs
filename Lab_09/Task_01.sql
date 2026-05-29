use UNIVER;
go
declare @c char(10) = 'Привет';
declare @vc varchar(20) = 'Мир';
declare @dt datetime;
declare @t time;
declare @i int;
declare @si smallint;
declare @ti tinyint;
declare @num numeric(12,5);

set @dt = getdate();
set @t = sysdatetime();
select @i = 100, @si = 5000, @ti = 255, @num = 12345.67890;

select @c as char_, @vc as varchar_, @dt as now, @t as time_now;
print 'int = ' + cast(@i as varchar);
print 'smallint = ' + cast(@si as varchar);
print 'tinyint = ' + cast(@ti as varchar);
print 'numeric = ' + cast(@num as varchar);