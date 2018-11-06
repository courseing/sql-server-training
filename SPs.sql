create procedure GetContacts
as
begin
	select Id,Name from Contacts
end
Go

exec GetContacts

--------------------------------

create procedure GetContactById
@Id int = 0
as
begin
	select id,name from contacts where id >= @Id

end
Go

Exec GetContactById
Exec GetContactById 10

declare @Id int = 5
exec GetContactById @Id

declare @Id int
set @id = 10
exec GetContactById @Id

--------------------------------

create procedure GetContactCount
 @NoOfRows int output
 as
begin
 select @NoOfRows = count(*) from Contacts;
end

declare @Rows int
exec GetContactCount @Rows output
select @Rows

