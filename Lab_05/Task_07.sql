use UNIVER
select NAME as Студент, NOTE as Оценка
from dbo.PROGRESS, dbo.STUDENT
where NOTE > all (
    select NOTE 
    from dbo.PROGRESS 
    where IDSTUDENT in (select IDSTUDENT from dbo.STUDENT where IDGROUP = 2)
);
use BMA_MyBase_V2
insert into dbo.Товары (кодтовара, наименование, цена, описание, количественаскладе)
values (99, N'Эксклюзив', 9999.99, N'Очень дорогой товар', 1);
select наименование, цена
from dbo.Товары
where цена > all (
    select distinct т.цена
    from dbo.Товары т
    inner join dbo.Сделки с on т.кодтовара = с.кодтовара
);
delete from dbo.Товары where кодтовара = 99;