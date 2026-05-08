use UNIVER;
select distinct dbo.PULPIT.PULPIT_NAME as Кафедра
from dbo.PULPIT
inner join dbo.FACULTY on dbo.PULPIT.FACULTY = dbo.FACULTY.FACULTY
inner join dbo.PROFESSION on dbo.FACULTY.FACULTY = dbo.PROFESSION.FACULTY
where dbo.PROFESSION.PROFESSION_NAME like N'%технология%'
   or dbo.PROFESSION.PROFESSION_NAME like N'%технологии%';
use BMA_MyBase_V2;
select distinct dbo.Товары.наименование as Товар
from dbo.Товары
inner join dbo.Сделки on dbo.Товары.кодтовара = dbo.Сделки.кодтовара
inner join dbo.Покупатели on dbo.Сделки.кодпокупателя = dbo.Покупатели.кодпокупателя
where dbo.Покупатели.адрес like N'Минск%';