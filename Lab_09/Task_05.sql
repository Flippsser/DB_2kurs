use UNIVER;
go
declare @avg_note float;
select @avg_note = avg(cast(NOTE as float)) from dbo.PROGRESS;
if @avg_note > 8
    print N'Средняя оценка выше 8 – отлично';
else
    print N'Средняя оценка не выше 8';