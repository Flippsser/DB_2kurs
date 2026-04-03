use UNIVER;
select 
    FACULTY.FACULTY_NAME,
    PULPIT.PULPIT_NAME,
    PROFESSION.PROFESSION_NAME,
    SUBJECT.SUBJECT_NAME,
    STUDENT.NAME,
    case 
        when PROGRESS.NOTE = 6 then N'шесть'
        when PROGRESS.NOTE = 7 then N'семь'
        when PROGRESS.NOTE = 8 then N'восемь'
    end
from dbo.PROGRESS
inner join dbo.STUDENT on PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
inner join dbo.GROUPS on STUDENT.IDGROUP = GROUPS.IDGROUP
inner join dbo.PROFESSION on GROUPS.PROFESSION = PROFESSION.PROFESSION
inner join dbo.FACULTY on GROUPS.FACULTY = FACULTY.FACULTY
inner join dbo.SUBJECT on PROGRESS.SUBJECT = SUBJECT.SUBJECT
inner join dbo.PULPIT on SUBJECT.PULPIT = PULPIT.PULPIT
where PROGRESS.NOTE between 6 and 8
order by PROGRESS.NOTE desc;
use BMA_MyBase_V2;
select 
    Товары.наименование,
    Покупатели.покупатель,
    Сделки.количество,
    case 
        when Сделки.количество <= 2 then N'мало'
        when Сделки.количество between 3 and 5 then N'средне'
        when Сделки.количество >= 6 then N'много'
    end
from dbo.Сделки
inner join dbo.Товары on Сделки.кодтовара = Товары.кодтовара
inner join dbo.Покупатели on Сделки.кодпокупателя = Покупатели.кодпокупателя
where Сделки.количество between 1 and 10
order by Сделки.количество desc;