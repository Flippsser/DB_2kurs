use UNIVER;
select
    f.FACULTY_NAME as Факультет,
    pr.PROFESSION_NAME as Специальность,
    year(getdate()) - g.YEAR_FIRST + 1 as Курс,
    round(avg(cast(p.NOTE as float)), 2) as Средняя_оценка
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.FACULTY f on g.FACULTY = f.FACULTY
where p.SUBJECT in ('БД', 'ОАиП')
group by f.FACULTY_NAME, pr.PROFESSION_NAME, g.YEAR_FIRST
order by Средняя_оценка desc;

use BMA_MyBase_V2;
select
    т.наименование,
    sum(с.количество) as Всего_продано,
    sum(т.цена * с.количество) as Выручка
from dbo.Сделки с
inner join dbo.Товары т on с.кодтовара = т.кодтовара
where т.наименование like N'%стекл%'
group by т.наименование;