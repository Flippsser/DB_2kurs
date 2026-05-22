use UNIVER;
go
create view Преподаватель as
select 
    TEACHER as Код,
    TEACHER_NAME as Имя,
    GENDER as Пол,
    PULPIT as Код_кафедры
from dbo.TEACHER;
go

use BMA_MyBase_V2;
go
create view Продажи as
select 
    Сделки.номерсделки as Номер,
    Сделки.датасделки as Дата,
    Товары.наименование as Товар,
    Товары.цена as Цена,
    Сделки.количество as Количество,
    Покупатели.покупатель as Покупатель
from dbo.Сделки
inner join dbo.Товары on Сделки.кодтовара = Товары.кодтовара
inner join dbo.Покупатели on Сделки.кодпокупателя = Покупатели.кодпокупателя;
go