use UNIVER;
go
select
    sb.SUBJECT_NAME as Дисциплина,
    count(*) as Количество_студентов_8_9
from dbo.PROGRESS p
inner join dbo.SUBJECT sb on p.SUBJECT = sb.SUBJECT
where p.NOTE in (8, 9)
group by sb.SUBJECT_NAME
having count(*) > 0        
order by Количество_студентов_8_9 desc;

use BMA_MyBase_V2;
go
select
    т.наименование as Товар,
    count(*) as Крупных_сделок_более_5
from dbo.Сделки с
inner join dbo.Товары т on с.кодтовара = т.кодтовара
where с.количество > 5
group by т.наименование
having count(*) > 0
order by Крупных_сделок_более_5 desc;