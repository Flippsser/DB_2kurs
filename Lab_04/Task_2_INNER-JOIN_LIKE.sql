use UNIVER;
select 
    AUDITORIUM.AUDITORIUM,
    AUDITORIUM_TYPE.AUDITORIUM_TYPENAME
from dbo.AUDITORIUM
inner join dbo.AUDITORIUM_TYPE 
    on AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE
where AUDITORIUM_TYPE.AUDITORIUM_TYPENAME like N'%компьютер%';
use BMA_MyBase_V2;
select 
    Товары.наименование,
    Сделки.датасделки,
    Покупатели.покупатель
from dbo.Сделки
inner join dbo.Товары 
    on Сделки.кодтовара = Товары.кодтовара
inner join dbo.Покупатели 
    on Сделки.кодпокупателя = Покупатели.кодпокупателя
where Товары.наименование like N'%стекл%';