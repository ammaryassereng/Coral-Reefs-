-------------Database creation-------------
--create database CoralReefs
Create database CoralReefs
GO
use CoralReefs

------------Table Creation-----------------

create table Administrators
(
SSN int not null,
primary key(SSN),
FName varchar(50) not null,
Minit char not null,
LName varchar(50) not null,
Gender char not null,
Nationality varchar(50) not null,
BDate date not null,
Address varchar(100) not null,
PhoneNumber bigint not null,
Email varchar(255) not null,
Password varchar(30) not null,
Salary int not null,
Mgr_SSN int,
Foreign key (Mgr_SSN) references Administrators,
)

create table Department
(
Dno int not null,
primary key(Dno),
DName varchar(100) not null,
Mgr_SSN int not null,
Mgr_StDate date not null,
Foreign key (Mgr_SSN) references Administrators,
)

create table StaffMember
(
SSN int not null,
primary key (SSN),
FName varchar(50) not null,
Minit char not null,
LName varchar (50) not null,
Nationality varchar(50) not null,
Gender char not null,
BDate date not null,
Email varchar(255) not null,
Password varchar(30) not null,
PhoneNumber Bigint not null,
Address varchar(100) not null,
Salary int not null,
Mgr_SSN int not null,
Department int not null,
Work_Hrs int not null,
Foreign key (Mgr_SSN) references Administrators,
Foreign key (Department) references Department,
)

create table OlderReservation
(
ConfirmationNumber int not null,
primary key(ConfirmationNumber),
Bill int,
StartDate date not null,
EndDate date not null,
)

create table PendingReservation
(
ConfirmationNumber int not null,
primary key(ConfirmationNumber),
StartDate date not null,
EndDate date not null,
)

create table CurrentReservation
(
ConfirmationNumber int not null,
primary key(ConfirmationNumber),
StartDate date not null,
EndDate date not null,
)

create table Rooms
(
RoomNumber int not null,
primary key (RoomNumber),
Type varchar(50) not null,
RoomView varchar(50) not null,
State varchar(50) not null,
OccupiedBy int,
NeedCleaning varchar(50),
PricePerDay int not null,
Foreign key (OccupiedBy) references CurrentReservation
)

--create table Future_Occupation
--(
--RoomNumber int not null,
--SDate Date not null,
--EDate Date not null,
--primary key (RoomNumber,SDate,EDate),
--foreign key (RoomNumber) references Rooms 
--)

create table CurrentGuest
(
NationalID Bigint not null,
primary key(NationalID),
FName varchar(50) not null,
Minit char not null,
LName varchar(50) not null,
Nationality varchar(50),
Age int not null,
Email varchar(255) not null,
PhoneNumber Bigint not null,
MaritalStatus varchar(50) not null,
Reserves int not null,
Married Bigint,
State varchar(50) not null,
Gender char(1) not null,
foreign key (Reserves) references CurrentReservation,
)

create table PendingGuest
(
NationalID Bigint not null,
primary key(NationalID),
FName varchar(50) not null,
Minit char not null,
LName varchar(50) not null,
Nationality varchar(50),
Age int not null,
Email varchar(255) not null,
PhoneNumber Bigint not null,
MaritalStatus varchar(50) not null, 
Married Bigint,
Gender char(1) not null,
State varchar(50) not null,
)


create table Payments
(
PaymentID int not null, 
primary key (PaymentID),
Method varchar(50) not null,
Credit_Card_Number bigint,
Service varchar(100) not null,
Price int not null,
PaidBy bigint not null,
Foreign key (PaidBy) references CurrentGuest,
)

create table Complaints
(
ComplaintID int not null,
primary key(ComplaintID),
Content varchar(4000) not null,
Date date not null,
Guest_NID bigint not null,
Foreign key (Guest_NID) references CurrentGuest,
)


create table OlderGuest
(
NationalID Bigint not null,
primary key(NationalID),
FName varchar(50) not null,
Minit char not null,
LName varchar(50) not null,
Nationality varchar(50),
Age int not null,
Email varchar(255) not null,
PhoneNumber bigint not null,
MaritalStatus varchar(50) not null, 
Married bigint,
Gender char(1) not null,
)

create table SpecialOccasions
(
OccasionID int not null,
primary key(OccasionID),
Date date unique not null,
Type varchar(50) not null,
Capacity int not null,
Duration int not null,
Price int not null,
HostID bigint not null,
HostFName varchar(50) not null,
HostMinit char(1) not null,--Updated 
HostLName varchar(50) not null,
PhoneNo bigint not null,
)

create table Reserved
(
ConfirmationNumber int not null,
NationalID bigint not  null,
primary key (ConfirmationNumber,NationalID),
foreign key (ConfirmationNumber) references OlderReservation,
Foreign key (NationalID) references OlderGuest,
)

create table Occupied
(
RoomNumber int not null,
ConfirmationNo int not  null,
primary key (RoomNumber,ConfirmationNo),
Foreign key (RoomNumber) references Rooms,
Foreign key (ConfirmationNo) references OlderReservation,
)

create table Reserving
(
ConfirmationNumber int not null,
NationalID bigint not  null,
primary key (ConfirmationNumber,NationalID),
foreign key (ConfirmationNumber) references PendingReservation on delete cascade,
Foreign key (NationalID) references PendingGuest on delete cascade,
)

create table Occupying
(
RoomNumber int not null,
ConfirmationNo int not  null,
primary key (RoomNumber,ConfirmationNo),
Foreign key (RoomNumber) references Rooms on delete cascade,
Foreign key (ConfirmationNo) references PendingReservation on delete cascade,
)

create table FeedBack
(
NationalID Bigint not  null,
Feedback  varchar(850) not null,
primary key (NationalID,Feedback),
Foreign key (NationalID) references OlderGuest,
)

create table ReservationRequest
(
NationalID bigint not null,
FName varchar(50) not null,
Minit char not null,
LName varchar(50) not null,
Nationality varchar(50) not null,
Gender char not null,
Age int not null,
Email varchar(255) not null,
PhoneNumber bigint not null,
Parent bigint,
Relation varchar(50),
RoomNumber int not null,
StartDate date not null,
EndDate date not null,
State varchar(50),
primary key (NationalID),
foreign key (Parent) references ReservationRequest,
foreign key (RoomNumber) references Rooms
)

create table Services
(
ServiceName  varchar(50) not null,
Price float not null
primary key (ServiceName),
)
create table RoomServiceRequest
(
RequestID int not null,
RoomNumber int not null,
NationalID bigint not null,
RoomServiceState varchar (50) not null,
OrderType varchar(50) not null,
DoneByChef varchar(50) not null,
primary key(RequestID),
foreign key (OrderType) references Services,
foreign key (RoomNumber) references Rooms,
foreign key (NationalID) references CurrentGuest,
)
create table Occasions
(
OccasionName  varchar(50) not null,
Price int not null,
MaxHallCapacity int not null,
primary key (OccasionName),
)
-----------inserting Foreign key--------------

---------------Inserting values into tables----------------
insert into Rooms 
values
(1,'Single','Garden','Vacant',null,'no',100),
(2,'Double','Garden','Vacant',null,'no',200),
(3,'Suite','Garden','Vacant',null,'no',150),
(4,'Single','Pool','Vacant',null,'no',300),
(5,'Double','Pool','Vacant',null,'no',600),
(6,'Suite','Pool','Vacant',null,'no',600),
(7,'Single','Garden','Vacant',null,'no',200),
(8,'Double','Garden','Vacant',null,'no',300),
(9,'Suite','Pool','Vacant',null,'no',600),
(10,'Single','Pool','Vacant',null,'no',150)

insert into CurrentReservation 
values
(10,'2021-01-01','2021-01-03'),
(20,'2020-12-01','2021-01-02'),
(30,'2020-12-15','2021-01-01'),
(40,'2020-11-29','2021-01-20')


insert into CurrentGuest 
values
(1000,'Ahmed','I','Elgarf','Egypt', 22, 'ahmedelgarf94@gmail.com', 01110494988, 'Single', 10 ,null, 'Half Board','M'),
(2000,'Ammar','Y','Elsayed','Egypt', 20, 'ammaryasser.eng@gmail.com', 01204340958, 'Single', 20 ,null, 'Full Board','M'),
(3000,'Nouran','A','Elkamhawy','Egypt', 20, 'nouranelkamhawy@icloud.com', 01121821440, 'Single',30 ,null, 'All Inclusive','F'),
(4000,'Youssef','M','Mokhtar','Egypt', 20, 'youssef.mokhtar.ym@gmail.com', 01116425635, 'Single',40 ,null, 'All Inclusive','M')

insert into OlderGuest 
values
(5000,'Mohamed','A','Mahmoud','Egypt', 30, 'mohamed@gmail.com', 01110568798, 'Single',null,'M'),
(6000,'Yassmin','A','Mohamed','Egypt', 30, 'yassmin@gmail.com', 01110365874, 'Single',null,'F'),
(7000,'Mahmoud','K','Ahmed','Egypt', 40, 'mahmoud@gmail.com', 01110547896, 'Single',null,'M'),
(8000,'Amr','M','Zaki','Egypt', 20, 'zika@gmail.com', 01110587412, 'Single',null,'F')

insert into Complaints 
values
(1, 'bad meal','2021-01-01',1000),
(2, 'very cold water','2020-12-01',2000),
(3, 'room is dirty','2020-12-15',3000),
(4, 'bad room services' ,'2020-11-29',4000)
insert into FeedBack 
values
(5000,'Good'),
(6000,'Bad'),
(7000,'Very Bad'),
(8000, 'Very Good')

insert into Administrators 
values
(123456789,'Ahmed','M','Mahmoud','M','Egyptian', '1940-03-29', 'Giza', 01110879654, 'ahmed@gmail.com', 123456, 10000, null),
(666999888,'Mohamed','A','Kamal','M','Egyptian', '1950-01-05', 'Dokki', 01110236547, 'mohamed@gmail.com', 123, 50000, null),
(555444777,'Mahmoud','B','Omar','M','Egyptian', '1980-05-10', 'Haram', 01110587469, 'mahmoud@gmail.com', 456, 100000, null),
(555555555,'Mario','M','Essam','M','Egyptian', '1970-10-15', 'October', 01110258745, 'mario@gmail.com', 58, 20000, null)

insert into Department 
values
(1,'Restaurant', 123456789, '2000-02-12'),
(2,'Room Service', 666999888, '2010-05-10'),
(3,'Reception', 555444777, '2001-10-15')


insert into StaffMember 
values
(333222555,'Amr','M','Zaki','Egyptian','M', '1990-03-29', 'amr@gmail.com', 100,  01110365874, 'Mohandesin',5000, 555555555, 1,8),
(666999888,'Kamal','A','Basel','Egyptian','M', '2000-01-05', 'kamal@gmail.com', 200,  01110254789, 'Feysal', 6000, 555444777, 2,10),
(444777888,'Ibrahim','E','Mokhtar','Egyptian','M', '1998-05-10', 'ibrahim@gmail.com', 300, 01110254792,  'Haram', 7000, 666999888, 3, 11),
(111444555,'Omar','K','Ahmed','Egyptian','M', '1999-10-15', 'omar@gmail.com', 400,  01110258745, 'Maadi',1000,123456789,3,12)

insert into Services
values
('Tea',10),
('Coffee',30),
('Juice',35),
('Nescafe',20),
('Soft Drink',15),
('Breakfast',70),
('Lunch',130),
('Dinner',180)


---------------Stored Procedures----------------
go
create proc spComplaint
@cid int,
@content varchar(4000),
@date date,
@GuestID bigint
as
begin
INSERT INTO Complaints Values(@cid,@content,@date,@GuestID)
end
---------------------------------------------------------------------------------------------------------------
go
create proc spGiveFeedback
@nid bigint,
@feedback varchar(850)
as
begin
insert into FeedBack
Values (@nid,@feedback)
end
---------------------------------------------------------------------------------------------------------------

go
create proc spRoomView
@view varchar(50)
as
begin
Select count(*) from Rooms where RoomView=@view
end
---------------------------------------------------------------------------------------------------------------

go
create proc spStaffNumber
as
begin
Select count(*) from StaffMember
end
---------------------------------------------------------------------------------------------------------------

go
create proc spAdminNumber
as
begin
Select count(*) from Administrators 
end
---------------------------------------------------------------------------------------------------------------

go
create proc spAvgSalaryStaff
as
begin
Select avg(Salary) from StaffMember 
end
---------------------------------------------------------------------------------------------------------------

go
create proc spAvgSalaryAdmin
as
begin
Select avg(Salary) from Administrators
end
---------------------------------------------------------------------------------------------------------------

go
create proc spNumComplaints
as
begin
Select count(*) from Complaints
end
---------------------------------------------------------------------------------------------------------------

go
create proc spDepNum
as
begin
Select count(*) from Department 
end
