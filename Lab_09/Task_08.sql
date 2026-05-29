use UNIVER;
go
declare @flag int = 1;
if @flag = 0
begin
    print 'Завершение без ошибок';
    return;
     print 'Завершение без ошибок';
end
else
begin
    print 'Ошибка, выход';
    return;
    print 'Ошибка, выход';
end;