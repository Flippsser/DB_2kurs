use UNIVER;
go
declare @t float = 2.5, @x float = 1.8, @z float;
declare @full_name nvarchar(100) = N'Бразовский Михаил Алексеевич';
declare @last_name nvarchar(50), @imya char(1), @othestvo char(1), @short_name nvarchar(100);
if @t > @x
    set @z = power(sin(@t), 2);
else if @t < @x
    set @z = 4 * (@t + @x);
else
    set @z = 1 - cast(exp(@x -2) as varchar(12));
print 'z = ' + cast(@z as char);
set @last_name = left(@full_name, charindex(' ', @full_name) - 1);
set @imya = substring(@full_name, charindex(' ', @full_name) + 1, 1);
set @othestvo = substring(@full_name, charindex(' ',@full_name,len(@last_name) + 2)+1, 1);
set @short_name = @last_name + N' ' + @imya + N'. ' + @othestvo + N'.';
print @short_name;