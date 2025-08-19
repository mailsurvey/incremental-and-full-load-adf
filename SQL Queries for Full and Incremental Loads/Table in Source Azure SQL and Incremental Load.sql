
create table tbluser(
id int identity(1,1) primary key not null,
name varchar(40) not null,
phone varchar(40) not null,
last_modified date not null
)

drop table [dbo].[tbluser]

create table watermarktable(
lastloaddate datetime not null
)

insert into watermarktable
values(31/12/2024)

select * from watermarktable

create table tblcontrol(
tablename varchar(50) not null,
lastloaddate datetime not null
)

insert into tbluser
values('name1','123456', '01/01/2025'),
('name2','456789', '02/01/2025'),
('name3','890123', '01/01/2025'),
('name4','234567', '03/01/2025'),
('name5','678901', '04/01/2025'),
('name6','012345', '03/01/2025')

select * from tbluser

insert into [dbo].[tbluser]
values ('name7', '345678', '05/01/2025'),
('name8', '345678', '06/01/2025'),
('name9', '345678', '08/01/2025')

insert into [dbo].[tbluser]
values('name10', '345678', '09/01/2025'),

('name11', '345678', '12/01/2025')

delete from [dbo].[tbluser] where name = 'name11'


insert into tblcontrol
values('tbluser', 31/12/2024)

delete from [dbo].[tblcontrol] where tablename = 'tbluser'

drop table [dbo].[tblcontrol]

select * from tblcontrol


create procedure updateControlTable
  @lastloaddatecontrol datetime
As
begin
  begin transaction
  update [dbo].[tblcontrol]
  set  lastloaddate = @lastloaddatecontrol
  Commit transaction
end


drop procedure updateControlTable