use assignment;
create table Member(Member_Id numeric(5),Member_Name varchar(30),Member_Address varchar(50)
,Acc_Open_Date date,Membership_type varchar(20),Penalty_Amount numeric(7));

create table Books(Book_No numeric(6),Book_Name varchar(30)
,Author_Name varchar(30),Cost numeric(7),Category char(10)); 

create table Issue(Lib_Issue_Id numeric(10),Book_No numeric(6)
,Member_Id numeric(5),Issue_Date date,Return_Date date);

alter table Member drop Penalty_Amount;

insert into Member values(1,'Richa Sharma','Pune','2005-12-10','Lifetime');
insert into Member values(2,'Garima Sen','Pune',current_date(),'Annual');
insert into Member values(3,'Milan','ANgar','2020-11-12','Quarterly');
insert into Member values(4,'Manoj','Nashik','2020-11-5','Lifetime');
insert into Member values(5,'Mayank','Shahdol',current_date(),'Annual');

insert into Books values(101,'Let us C','Denis Ritchie',450,'System')
,(102,'Oracle-Complete Ref','Loni',550,'Database')
,(103,'Mastering SQl','Loni',250,'Database')
,(104,'PL SQL-Ref','ScottUrman',750,'Database');

alter table Books add PRIMARY KEY (Book_No);
update Books set Cost = 300,Category='RDBMS' where Book_no = 103;

drop table Issue;
create table Issue(Lib_Issue_Id numeric(10),Book_No numeric(6)
,Member_Id numeric(5),Issue_Date date,Return_Date date);

insert into Issue (Lib_Issue_Id,Book_No,Member_id,Issue_Date) values
(7001,101,1,'2006-12-10'),
(7002,102,2,'2006-12-25'),
(7003,104,1,'2006-01-15'),
(7004,101,1,'2006-07-04'),
(7005,104,2,'2006-11-1'),
(7006,101,3,'2006-02-18');

show tables;
select Member_ID,Member_Name,Member_Address,date_format(Acc_Open_Date, "%d-%b-%Y") as Acc_Open_Date, Membership_Type from Member;
select * from Books;
select Lib_Issue_Id,Book_No,Member_id,date_format(Issue_Date,"%d-%b-%Y") as Issue_Date,Return_Date from Issue;