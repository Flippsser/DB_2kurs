use UNIVER;
select 
    PULPIT.PULPIT_NAME,
    isnull(TEACHER.TEACHER_NAME, N'***')
from dbo.PULPIT
left outer join dbo.TEACHER on PULPIT.PULPIT = TEACHER.PULPIT;
use BMA_MyBase_V2;
select 
    Покупатели.покупатель,
    isnull(cast(Сделки.номерсделки as nvarchar), N'нет сделок')
from dbo.Покупатели
left outer join dbo.Сделки 
    on Покупатели.кодпокупателя = Сделки.кодпокупателя;