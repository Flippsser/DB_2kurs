create table dbo.Товары
(
    кодтовара int primary key,
    наименование nvarchar(100) not null,
    цена money not null,
    описание nvarchar(500) null,
    количественаскладе int not null default 0
        constraint ck_товары_количество check (количественаскладе >= 0)
) on FG_Tovary;
go

create table dbo.Покупатели
(
    кодпокупателя int primary key,
    покупатель nvarchar(100) not null,
    телефон nvarchar(20) not null,
    адрес nvarchar(200) not null
) on FG_Buyers;
go

create table dbo.Сделки
(
    номерсделки int primary key,
    датасделки date not null,
    кодтовара int not null,
    кодпокупателя int not null,
    количество int not null
    constraint ck_сделки_количество check (количество > 0),
    foreign key (кодтовара) references dbo.Товары(кодтовара),
    foreign key (кодпокупателя) references dbo.Покупатели(кодпокупателя)
) on FG_Sdelki;
go