alter table dbo.Товары add примечание nvarchar(200) null;
go
alter table dbo.Товары add constraint ck_цена check (цена > 0);
go
alter table dbo.Товары drop column примечание;
go