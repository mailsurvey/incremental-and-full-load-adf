create table userData (
id int identity(1,1) primary key not null,
name varchar(40) not null,
phone varchar(40) not null,
last_modified date not null
)


select * from [dbo].[userData]

drop table [dbo].[userData]