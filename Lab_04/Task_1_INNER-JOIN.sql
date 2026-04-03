use UNIVER;
select 
    AUDITORIUM.AUDITORIUM,
    AUDITORIUM_TYPE.AUDITORIUM_TYPENAME
from dbo.AUDITORIUM
inner join dbo.AUDITORIUM_TYPE 
    on AUDITORIUM.AUDITORIUM_TYPE = AUDITORIUM_TYPE.AUDITORIUM_TYPE;
use BMA_MyBase_V2;
select 
    Товары.наименование,
    Сделки.датасделки,
    Сделки.количество
from dbo.Товары
inner join dbo.Сделки 
    on Товары.кодтовара = Сделки.кодтовара;