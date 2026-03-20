use master;
create database BMA_MyBase_V2_2
on primary
(
    name = N'BMA_MyBase_V2_2_Data',
    filename = N'C:\Users\Misha\Desktop\FIT\Second_Kurs\4 sem\Базы данных DB\Labs\Lab_03\BMA_MyBase_V2_2.mdf',
    size = 10mb,
    maxsize = unlimited,
    filegrowth = 5mb
)
log on
(
    name = N'BMA_MyBase_V2_2_Log',
    filename = N'C:\Users\Misha\Desktop\FIT\Second_Kurs\4 sem\Базы данных DB\Labs\Lab_03\BMA_MyBase_V2_2.ldf',
    size = 5mb,
    maxsize = unlimited,
    filegrowth = 5mb
);
go