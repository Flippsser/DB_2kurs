use UNIVER;
-- без ROLLUP (только обычная группировка)
select
    f.FACULTY_NAME as Факультет,
    pr.PROFESSION_NAME as Специальность,
    sb.SUBJECT_NAME as Дисциплина,
    avg(cast(p.NOTE as float)) as Средняя_оценка
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.FACULTY f on g.FACULTY = f.FACULTY
inner join dbo.SUBJECT sb on p.SUBJECT = sb.SUBJECT
where f.FACULTY_NAME = N'Технология органических веществ'   
group by f.FACULTY_NAME, pr.PROFESSION_NAME, sb.SUBJECT_NAME;

-- с ROLLUP (добавляет промежуточные и общий итог)
select
    f.FACULTY_NAME as Факультет,
    pr.PROFESSION_NAME as Специальность,
    sb.SUBJECT_NAME as Дисциплина,
    avg(cast(p.NOTE as float)) as Средняя_оценка
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.FACULTY f on g.FACULTY = f.FACULTY
inner join dbo.SUBJECT sb on p.SUBJECT = sb.SUBJECT
where f.FACULTY_NAME = N'Технология органических веществ'
group by rollup(f.FACULTY_NAME, pr.PROFESSION_NAME, sb.SUBJECT_NAME);

use BMA_MyBase_V2;
-- без ROLLUP
select
    п.покупатель,
    т.наименование as Товар,
    sum(т.цена * с.количество) as Сумма
from dbo.Сделки с
inner join dbo.Товары т on с.кодтовара = т.кодтовара
inner join dbo.Покупатели п on с.кодпокупателя = п.кодпокупателя
group by п.покупатель, т.наименование


-- с ROLLUP (промежуточные итоги по покупателям и общий итог)
select
    п.покупатель,
    т.наименование as Товар,
    sum(т.цена * с.количество) as Сумма
from dbo.Сделки с
inner join dbo.Товары т on с.кодтовара = т.кодтовара
inner join dbo.Покупатели п on с.кодпокупателя = п.кодпокупателя
group by rollup(п.покупатель, т.наименование)   