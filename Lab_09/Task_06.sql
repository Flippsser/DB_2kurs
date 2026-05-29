use UNIVER;
go
select 
    g.IDGROUP,
    datename(weekday, p.PDATE) as День_недели,
    p.PDATE as Дата_экзамена
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
where p.SUBJECT = 'БД';