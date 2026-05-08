use UNIVER;
select distinct dbo.PULPIT.PULPIT_NAME as Кафедра
from dbo.PULPIT
inner join
(
    select dbo.PROFESSION.FACULTY
    from dbo.PROFESSION
    where dbo.PROFESSION.PROFESSION_NAME like N'%технология%'
       or dbo.PROFESSION.PROFESSION_NAME like N'%технологии%'
) as Подзапрос
on dbo.PULPIT.FACULTY = Подзапрос.FACULTY;
use BMA_MyBase_V2;
select distinct dbo.Товары.наименование as Товар
from dbo.Товары
inner join
(
    select dbo.Сделки.кодтовара
    from dbo.Сделки
    where dbo.Сделки.кодпокупателя in
    (
        select dbo.Покупатели.кодпокупателя
        from dbo.Покупатели
        where dbo.Покупатели.адрес like N'Минск%'
    )
) as Подзапрос
on dbo.Товары.кодтовара = Подзапрос.кодтовара;