use UNIVER;
go
alter view Количество_кафедр with schemabinding as
select 
    f.FACULTY_NAME as Факультет,
    count(p.PULPIT) as Количество_кафедр
from dbo.FACULTY f
left join dbo.PULPIT p on f.FACULTY = p.FACULTY
group by f.FACULTY_NAME;
go

use BMA_MyBase_V2;
go
alter view Количество_покупок_покупателей with schemabinding as
select 
    п.покупатель,
    count(с.номерсделки) as Количество_покупок
from dbo.Покупатели п
left join dbo.Сделки с on п.кодпокупателя = с.кодпокупателя
group by п.покупатель;
go