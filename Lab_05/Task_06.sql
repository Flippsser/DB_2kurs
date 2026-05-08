use UNIVER
select 
    (select avg(cast(NOTE as float)) from dbo.PROGRESS where SUBJECT = 'ОАиП') as [Ср. ОАиП],
    (select avg(cast(NOTE as float)) from dbo.PROGRESS where SUBJECT = 'БД') as [Ср. БД],
    (select avg(cast(NOTE as float)) from dbo.PROGRESS where SUBJECT = 'СУБД') as [Ср. СУБД];
use BMA_MyBase_V2
select 
    (select avg(цена) from dbo.Товары) as Средняя_цена_товара,
    (select avg(количество) from dbo.Сделки) as Среднее_количество_в_сделке,
    (select avg(цена * количество) from dbo.Товары т inner join dbo.Сделки с on т.кодтовара = с.кодтовара) as Средняя_сумма_сделки;