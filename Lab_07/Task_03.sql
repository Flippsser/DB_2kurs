use UNIVER;
-- первый запрос: факультет ТОВ
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
group by f.FACULTY_NAME, pr.PROFESSION_NAME, sb.SUBJECT_NAME

union

-- второй запрос: факультет ХТиТ
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
where f.FACULTY_NAME = N'Химическая технология и техника'
group by f.FACULTY_NAME, pr.PROFESSION_NAME, sb.SUBJECT_NAME;

use BMA_MyBase_V2;
select покупатель as Имя from dbo.Покупатели
union
select наименование from dbo.Товары;