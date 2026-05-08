use UNIVER;
select 
    dbo.STUDENT.NAME as Студент,
    dbo.PROGRESS.NOTE as Оценка
from dbo.PROGRESS
inner join dbo.STUDENT on dbo.PROGRESS.IDSTUDENT = dbo.STUDENT.IDSTUDENT
where dbo.PROGRESS.NOTE > any
(
    select dbo.PROGRESS.NOTE
    from dbo.PROGRESS
    where dbo.PROGRESS.IDSTUDENT in
    (
        select dbo.STUDENT.IDSTUDENT
        from dbo.STUDENT
        where dbo.STUDENT.IDGROUP = 2
    )
);
use BMA_MyBase_V2;
select 
    dbo.Товары.наименование as Товар,
    dbo.Товары.цена as Цена
from dbo.Товары
where dbo.Товары.цена > any
(
    select dbo.Товары.цена
    from dbo.Товары
    where dbo.Товары.наименование like N'%стекл%'
);