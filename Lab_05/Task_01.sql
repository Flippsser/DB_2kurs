use UNIVER;
select PULPIT_NAME as Кафедра
from dbo.PULPIT
where FACULTY in (
    select FACULTY 
    from dbo.PROFESSION 
    where PROFESSION_NAME like N'%технология%' or PROFESSION_NAME like N'%технологии%'
);
use BMA_MyBase_V2;
select Товары.наименование as Товар
from dbo.Товары
where кодтовара in (
    select кодтовара 
    from dbo.Сделки 
    where кодпокупателя in (
        select кодпокупателя 
        from dbo.Покупатели 
        where адрес like N'%Минск%'
    )
);