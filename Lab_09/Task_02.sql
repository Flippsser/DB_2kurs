use UNIVER;
go
declare @total_capacity int, @avg_capacity float, @count_all int, @count_below_avg int, @percent float;
select @total_capacity = sum(AUDITORIUM_CAPACITY),
       @count_all = count(*)
from dbo.AUDITORIUM;
if @total_capacity > 200
begin
    select @avg_capacity = avg(cast(AUDITORIUM_CAPACITY as float))
    from dbo.AUDITORIUM;
    select @count_below_avg = count(*)
    from dbo.AUDITORIUM
    where AUDITORIUM_CAPACITY < @avg_capacity;
    set @percent = (@count_below_avg * 100.0) / @count_all;
    print 'Общая вместимость: ' + cast(@total_capacity as char);
    print 'Количество аудиторий: ' + cast(@count_all as char);
    print 'Средняя вместимость: ' + cast(@avg_capacity as char);
    print 'Аудиторий ниже средней: ' + cast(@count_below_avg as char);
    print 'Процент: ' + cast(@percent as char);
end
else
    print 'Общая вместимость = ' + cast(@total_capacity as varchar) + ' (меньше или равно 200)';