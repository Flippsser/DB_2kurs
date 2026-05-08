use UNIVER;
select
    Интервал,
    count(*) as Количество
from (
    select
        case
            when NOTE between 1 and 2 then '1-2'
            when NOTE between 3 and 4 then '3-4'
            when NOTE between 5 and 6 then '5-6'
            when NOTE between 7 and 8 then '7-8'
            when NOTE between 9 and 10 then '9-10'
        end as Интервал
    from dbo.PROGRESS
) as t
where Интервал is not null
group by Интервал
order by Интервал desc;

use BMA_MyBase_V2;
select
    Категория,
    count(*) as Количество_сделок
from (
    select
        case
            when dbo.Сделки.количество <= 2 then N'мало'
            when dbo.Сделки.количество between 3 and 5 then N'средне'
            else N'много'
        end as Категория
    from dbo.Сделки
) as t
group by Категория;