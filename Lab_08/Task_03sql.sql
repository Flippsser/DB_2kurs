use UNIVER;
go
create view Аудитории as
select 
    AUDITORIUM as Код,
    AUDITORIUM_NAME as Наименование,
    AUDITORIUM_TYPE as Тип
from dbo.AUDITORIUM
where AUDITORIUM_TYPE like 'ЛК%'
with check option;
go

use BMA_MyBase_V2;
go
create view Крупные_сделки as
select 
    номерсделки,
    датасделки,
    кодтовара,
    кодпокупателя,
    количество
from dbo.Сделки
where количество > 5
with check option;
go