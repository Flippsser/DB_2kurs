create table dbo.students (id int, name varchar(50));
create table dbo.clubs (id int, club_name varchar(50));
insert into dbo.students values (1, 'Иван'), (2, 'Мария'), (3, 'Петр');
insert into dbo.clubs values (2, 'Спорт'), (3, 'Музыка'), (4, 'Танцы');


select dbo.students.id, dbo.students.name, dbo.clubs.id, dbo.clubs.club_name
from dbo.students 
full outer join dbo.clubs on dbo.students.id = dbo.clubs.id;

select dbo.students.id, dbo.students.name, dbo.clubs.id, dbo.clubs.club_name
from dbo.clubs 
full outer join dbo.students on dbo.clubs.id = dbo.students.id;


select dbo.students.id, dbo.students.name
from dbo.students 
full outer join dbo.clubs on dbo.students.id = dbo.clubs.id
where dbo.clubs.id is null;


select dbo.clubs.id, dbo.clubs.club_name
from dbo.students 
full outer join dbo.clubs on dbo.students.id = dbo.clubs.id
where dbo.students.id is null;


select dbo.students.id, dbo.students.name, dbo.clubs.id, dbo.clubs.club_name
from dbo.students 
full outer join dbo.clubs on dbo.students.id = dbo.clubs.id
where dbo.students.id is not null and dbo.clubs.id is not null;
drop table dbo.students, dbo.clubs;