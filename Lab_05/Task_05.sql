use UNIVER
select FACULTY_NAME as Факультет
from dbo.FACULTY f
where not exists (
    select * 
    from dbo.PULPIT p
    where p.FACULTY = f.FACULTY
);
use BMA_MyBase_V2
select покупатель as Покупатель
from dbo.Покупатели п
where exists (
    select * 
    from dbo.Сделки с
    where с.кодпокупателя = п.кодпокупателя
);