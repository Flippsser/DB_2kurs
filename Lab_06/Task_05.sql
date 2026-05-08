use UNIVER;
select
    pr.PROFESSION_NAME as Специальность,
    sb.SUBJECT_NAME as Дисциплина,
    round(avg(cast(p.NOTE as float)), 2) as Средняя_оценка
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.SUBJECT sb on p.SUBJECT = sb.SUBJECT
where g.FACULTY = 'ТОВ'
group by pr.PROFESSION_NAME, sb.SUBJECT_NAME;

use BMA_MyBase_V2;
select
    т.наименование,
    sum(с.количество) as Всего_куплено,
    sum(т.цена * с.количество) as Общая_сумма
from dbo.Сделки с
inner join dbo.Товары т on с.кодтовара = т.кодтовара
inner join dbo.Покупатели п on с.кодпокупателя = п.кодпокупателя
where п.покупатель like N'Иванов%'
group by т.наименование;