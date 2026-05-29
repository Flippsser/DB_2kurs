use UNIVER;
go
begin try
    drop table dbo.НетТаблицы;
end try
begin catch
    print 'Номер ошибки: ' + cast(error_number() as varchar);
    print 'Сообщение: ' + error_message();
    print 'Уровень серьёзности: ' + cast(error_severity() as varchar);
    print 'Состояние: ' + cast(error_state() as varchar);
    print 'Строка: ' + cast(error_line() as varchar);
    print 'Процедура: ' + isnull(error_procedure(), 'нет');
end catch;