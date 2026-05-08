use UNIVER;
select 
    AUDITORIUM as Аудитория,
    AUDITORIUM_TYPE as Тип,
    AUDITORIUM_CAPACITY as Вместимость
from dbo.AUDITORIUM a1
where AUDITORIUM_CAPACITY = (
    select top 1 AUDITORIUM_CAPACITY
    from dbo.AUDITORIUM a2
    where a2.AUDITORIUM_TYPE = a1.AUDITORIUM_TYPE
    order by AUDITORIUM_CAPACITY desc
)
order by AUDITORIUM_CAPACITY desc;
use BMA_MyBase_V2
select 
    Наименование as Товар,
    количество as Макс_в_сделке
from dbo.Сделки с1, dbo.Товары
where количество = (
    select top 1 количество
    from dbo.Сделки с2
    where с2.кодтовара = с1.кодтовара
    order by количество desc
);