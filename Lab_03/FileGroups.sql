use BMA_MyBase_V2_2;
go

alter database BMA_MyBase_V2_2 add filegroup FG_Tovary;
go
alter database BMA_MyBase_V2_2 add file
(
    name = N'BMA_MyBase_V2_2_Tovary',
    filename = N'C:\Users\Misha\Desktop\FIT\Second_Kurs\4 sem\Базы данных DB\Labs\Lab_03\BMA_MyBase_V2_2_Tovary.ndf',
    size = 10mb,
    maxsize = unlimited,
    filegrowth = 5mb
) to filegroup FG_Tovary;
go

alter database BMA_MyBase_V2_2 add filegroup FG_Buyers;
go
alter database BMA_MyBase_V2_2 add file
(
    name = N'BMA_MyBase_V2_2_Buyers',
    filename = N'C:\Users\Misha\Desktop\FIT\Second_Kurs\4 sem\Базы данных DB\Labs\Lab_03\BMA_MyBase_V2_2_Buyers.ndf',
    size = 10mb,
    maxsize = unlimited,
    filegrowth = 5mb
) to filegroup FG_Buyers;
go

alter database BMA_MyBase_V2_2 add filegroup FG_Sdelki;
go
alter database BMA_MyBase_V2_2 add file
(
    name = N'BMA_MyBase_V2_2_Sdelki',
    filename = N'C:\Users\Misha\Desktop\FIT\Second_Kurs\4 sem\Базы данных DB\Labs\Lab_03\BMA_MyBase_V2_2_Sdelki.ndf',
    size = 10mb,
    maxsize = unlimited,
    filegrowth = 5mb
) to filegroup FG_Sdelki;
go
use BMA_MyBase_V2_2;
go

select * from sys.filegroups;