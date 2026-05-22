use UNIVER;
go
create view Количество_кафедр as
select 
    f.FACULTY_NAME as Факультет,
    count(p.PULPIT) as Количество_кафедр
from dbo.FACULTY f
left join dbo.PULPIT p on f.FACULTY = p.FACULTY
group by f.FACULTY_NAME;
go

use BMA_MyBase_V2;
go
create view Количество_покупок_покупателей as
select 
    п.покупатель,
    count(с.номерсделки) as Количество_покупок
from dbo.Покупатели п
left join dbo.Сделки с on п.кодпокупателя = с.кодпокупателя
group by п.покупатель;
go