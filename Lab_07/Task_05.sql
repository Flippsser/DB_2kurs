use UNIVER;
select pr.PROFESSION_NAME
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.FACULTY f on g.FACULTY = f.FACULTY
where f.FACULTY_NAME = N'Технология органических веществ'

except

select pr.PROFESSION_NAME
from dbo.PROGRESS p
inner join dbo.STUDENT s on p.IDSTUDENT = s.IDSTUDENT
inner join dbo.GROUPS g on s.IDGROUP = g.IDGROUP
inner join dbo.PROFESSION pr on g.PROFESSION = pr.PROFESSION
inner join dbo.FACULTY f on g.FACULTY = f.FACULTY
where f.FACULTY_NAME = N'Химическая технология и техника';

use BMA_MyBase_V2;
select покупатель as Имя from dbo.Покупатели
except
select наименование from dbo.Товары;