use UNIVER;
select
    at.AUDITORIUM_TYPENAME as Тип_аудитории,
    max(a.AUDITORIUM_CAPACITY) as Макс_вместимость,
    min(a.AUDITORIUM_CAPACITY) as Мин_вместимость,
    avg(a.AUDITORIUM_CAPACITY) as Средняя_вместимость,
    sum(a.AUDITORIUM_CAPACITY) as Общая_вместимость,
    count(*) as Количество
from dbo.AUDITORIUM a
inner join dbo.AUDITORIUM_TYPE at on a.AUDITORIUM_TYPE = at.AUDITORIUM_TYPE
group by at.AUDITORIUM_TYPENAME;

 use BMA_MyBase_V2;
select
    dbo.Покупатели.покупатель,
    sum(dbo.Товары.цена * dbo.Сделки.количество) as Общая_сумма,
    count(*) as Количество_покупок
from dbo.Сделки
inner join dbo.Товары on dbo.Сделки.кодтовара = dbo.Товары.кодтовара
inner join dbo.Покупатели on dbo.Сделки.кодпокупателя = dbo.Покупатели.кодпокупателя
group by dbo.Покупатели.покупатель;