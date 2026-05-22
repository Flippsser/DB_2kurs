use UNIVER;
go
create view Дисциплины as
select top (100) percent
    SUBJECT as Код,
    SUBJECT_NAME as Дисциплина,
    PULPIT as Код_кафедры
from dbo.SUBJECT
order by SUBJECT_NAME;
go

use BMA_MyBase_V2;
go
create view Товары_по_цене as
select top (100) percent
    кодтовара as Код,
    наименование as Товар,
    цена as Цена
from dbo.Товары
order by цена desc;
go