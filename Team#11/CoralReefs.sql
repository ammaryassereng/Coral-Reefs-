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
Foreign key (Guest_NID) references CurrentGuest on delete cascade
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
HostMinit char(1) not null,
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
primary key (NationalID),
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
foreign key (RoomNumber) references Rooms
)

create table Services
(
ServiceName  varchar(50) not null,
Price float not null,
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
foreign key (NationalID) references CurrentGuest on delete cascade
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


insert into OlderReservation
values
(11,2000,'2020-12-25','2020-12-31'),
(22,1000,'2020-11-20','2020-12-01'),
(33,3000,'2020-11-06','2020-11-10'),
(44,2000,'2020-11-01','2020-11-06'),
(55,6000,'2020-09-25','2020-10-31'),
(66,5000,'2020-10-02','2020-10-20'),
(77,1000,'2020-12-21','2020-12-25'),
(88,3000,'2020-07-22','2020-07-31'),
(99,4000,'2020-08-02','2020-08-21'),
(111,8000,'2020-08-10','2020-08-31'),
(112,3000,'2020-06-30','2020-07-12'),
(113,5000,'2020-05-10','2020-05-20'),
(114,2000,'2020-04-22','2020-05-10'),
(115,1000,'2020-04-10','2020-04-15'),
(116,4000,'2020-04-01','2020-04-10'),
(117,3000,'2020-03-26','2020-03-31'),
(118,9000,'2020-03-12','2020-03-24'),
(119,7000,'2020-02-20','2020-02-26'),
(222,5000,'2020-02-02','2020-02-16'),
(223,2000,'2020-01-25','2020-01-31')


insert into CurrentReservation 
values
(10,'2021-01-01','2021-01-23'),
(20,'2021-01-03','2021-01-15'),
(30,'2020-12-25','2021-01-16'),
(40,'2020-12-31','2021-01-14'),
(50,'2021-01-09','2021-01-22'),
(60,'2021-01-05','2021-02-01'),
(70,'2020-12-25','2021-01-16'),
(80,'2020-12-27','2021-01-15'),
(90,'2021-01-01','2021-01-20'),
(100,'2021-01-10','2021-01-25'),
(110,'2021-01-05','2021-01-30'),
(120,'2021-01-03','2021-01-23'),
(130,'2021-01-10','2021-01-17'),
(140,'2021-01-06','2021-01-18'),
(150,'2021-01-07','2021-01-16'),
(160,'2020-12-30','2021-01-20'),
(170,'2021-01-09','2021-02-02'),
(180,'2021-01-02','2021-01-20'),
(190,'2021-01-04','2021-01-31'),
(200,'2021-01-10','2021-01-24')


insert into PendingReservation
values
(12,'2021-01-20','2021-01-25'),
(13,'2021-01-27','2021-02-02'),
(14,'2021-02-01','2021-02-10'),
(15,'2021-02-15','2021-02-25'),
(16,'2021-03-02','2021-03-09'),
(17,'2021-03-05','2021-03-12'),
(18,'2021-01-25','2021-01-31'),
(19,'2021-01-18','2021-01-23'),
(23,'2021-02-20','2021-02-25'),
(24,'2021-01-15','2021-01-22'),
(25,'2021-02-09','2021-02-17'),
(26,'2021-02-21','2021-02-26'),
(27,'2021-01-18','2021-01-31'),
(28,'2021-03-21','2021-03-25'),
(29,'2021-01-19','2021-01-29'),
(34,'2021-02-17','2021-02-28'),
(35,'2021-03-20','2021-03-25'),
(36,'2021-03-23','2021-03-29'),
(37,'2021-04-01','2021-04-10'),
(38,'2021-01-16','2021-01-18')

insert into Rooms 
values
(1,'Single','Garden','Occupied',20,'no',100),
(2,'Double','Garden','Occupied',10,'yes',200),
(3,'Suite','Garden','Occupied',30,'no',150),
(4,'Single','Pool','Occupied',40,'no',300),
(5,'Double','Pool','Occupied',50,'no',600),
(6,'Suite','Pool','Occupied',60,'no',600),
(7,'Single','Garden','Occupied',70,'yes',100),
(8,'Double','Garden','Occupied',80,'no',200),
(9,'Suite','Pool','Occupied',90,'no',600),
(10,'Single','Pool','Vacant',null,'yes',300),
(11,'Double','Pool','Occupied',100,'no',600),
(12,'Single','Garden','Vacant',null,'no',100),
(13,'Suite','Pool','Occupied',110,'no',600),
(14,'Double','Garden','Vacant',null,'yes',200),
(15,'Single','Pool','Occupied',120,'yes',300),
(16,'Single','Garden','Occupied',130,'no',100),
(17,'Suite','Pool','Occupied',140,'no',600),
(18,'Double','Pool','Occupied',150,'no',600),
(19,'Double','Garden','Occupied',160,'yes',200),
(20,'Suite','Garden','Vacant',null,'no',150),
(21,'Single','Garden','Occupied',170,'yes',100),
(22,'Suite','Pool','Occupied',180,'no',600),
(23,'Double','Garden','Vacant',null,'no',200),
(24,'Suite','Garden','Occupied',190,'yes',150),
(25,'Single','Pool','Occupied',200,'no',300)

insert into Occupied
values
(2,11),
(1,22),
(3,33),
(5,44),
(6,55),
(4,66),
(7,77),
(8,88),
(9,99),
(11,111),
(13,112),
(15,113),
(16,114),
(17,115),
(18,116),
(19,117),
(21,118),
(22,119),
(24,222),
(25,223)


insert into Occupying
values
(2,12),
(1,13),
(3,14),
(5,15),
(6,16),
(4,17),
(7,18),
(8,19),
(9,23),
(11,24),
(13,25),
(15,26),
(16,27),
(17,28),
(18,29),
(19,34),
(21,35),
(22,36),
(24,37),
(25,38)



insert into CurrentGuest 
values
(12345678912345,'Ahmed','I','Elgarf','Egypt', 22, 'ahmedelgarf94@gmail.com', 01110494988, 'Single', 10 , 'Half Board','M'),
(35454654651665,'Ammar','Y','Elsayed','Egypt', 20, 'ammaryasser.eng@gmail.com', 01204340958, 'Single', 20 , 'Full Board','M'),
(66546546516513,'Nouran','A','Elkamhawy','Egypt', 20, 'nouranelkamhawy@icloud.com', 01121821440, 'Single',30 , 'All Inclusive','F'),
(65465313848412,'Youssef','M','Mokhtar','Egypt', 20, 'youssef.mokhtar.ym@gmail.com', 01116425635, 'Married',40 , 'All Inclusive','M'),
(64313835131532,'Omar','O','Gamal','Egypt', 20, 'omar@gmail.com', 01154353635, 'Single',50 , 'All Inclusive','M'),
(31231864612546,'Adel','M','Adam','Egypt', 20, 'adel@gmail.com', 01043353635, 'Single',60 , 'Half Board','M'),
(12331564823158,'Mohamed','M','Hesham','Egypt', 20, 'hesham@gmail.com', 01159952785, 'Single',70 , 'Full Board','M'),
(45454531212328,'Merna','M','Hossam','Egypt', 20, 'merna@gmail.com', 01154353635, 'Single',80 , 'All Inclusive','F'),
(21351843132182,'Nada','M','Mamdouh','Egypt', 20, 'nada@gmail.com', 01105645635, 'Single',90 , 'All Inclusive','F'),
(87465132183213,'Menna','H','Hesham','Egypt', 20, 'menna@gmail.com', 01154353635, 'Single',100 , 'Half Board','F'),
(98465131231613,'Hannah','T','Hatem','Egypt', 20, 'hannah@gmail.com', 01097783635, 'Single',110 , 'Full Board','F'),
(65498453151321,'Amr','M','Zaki','Egypt', 20, 'zaki@gmail.com', 01541236635, 'Single',120 , 'All Inclusive','M'),
(84984981651512,'Ahmed','A','Ashraf','Egypt', 20, 'ashro@gmail.com', 01154353033, 'Single',130 , 'All Inclusive','M'),
(98494651651651,'Mohamed','M','AlEmam','Egypt', 20, 'emam@gmail.com', 01154378984, 'Single',140 , 'Half Board','M'),
(65456465862132,'Noha','M','Montaser','Egypt', 20, 'noha@gmail.com', 01169813635, 'Single',150 , 'All Inclusive','F'),
(98745165132135,'Yasmin','M','Hossam','Egypt', 20, 'yasmin@gmail.com', 01098963635, 'Single',160 , 'Full Board','F'),
(65684051165112,'Mohamed','M','Yehia','Egypt', 20, 'momo@gmail.com', 01565464656, 'Single',170 , 'Half Board','M'),
(98452899089191,'Youssef','M','Fekry','Egypt', 20, 'fekry@gmail.com', 01154453285, 'Single',180 , 'All Inclusive','M'),
(65164651651616,'Amir','M','Hamada','Egypt', 20, 'amir@gmail.com', 01064753635, 'Single',190 , 'All Inclusive','M'),
(21658451561152,'Ziad','M','Gamal','Egypt', 20, 'ziad@gmail.com', 01246655635, 'Single',200 , 'Full Board','M')




insert into Payments
values
(1,'Cash',null,'Reservation',600,12345678912345),
(2,'Cash',null,'Reservation',600,35454654651665),
(3,'Cash',null,'Reservation',600,66546546516513),
(4,'Cash',null,'Reservation',600,65465313848412),
(5,'Cash',null,'Reservation',600,64313835131532),
(6,'Cash',null,'Reservation',600,31231864612546),
(7,'Cash',null,'Reservation',600,12331564823158),
(8,'Cash',null,'Reservation',600,45454531212328),
(9,'Cash',null,'Reservation',600,21351843132182),
(10,'Cash',null,'Reservation',600,87465132183213),
(11,'Cash',null,'Reservation',600,98465131231613),
(12,'Cash',null,'Reservation',600,65498453151321),
(13,'Cash',null,'Reservation',600,84984981651512),
(14,'Cash',null,'Reservation',600,98494651651651),
(15,'Cash',null,'Reservation',600,65456465862132),
(16,'Cash',null,'Reservation',600,98745165132135),
(17,'Cash',null,'Reservation',600,65684051165112),
(18,'Cash',null,'Reservation',600,98452899089191),
(19,'Cash',null,'Reservation',600,65164651651616),
(20,'Cash',null,'Reservation',600,21658451561152)

insert into Complaints 
values
(1, 'bad meal','2021-01-11',12345678912345),
(2, 'very cold water','2021-01-09',64313835131532),
(3, 'room is dirty','2021-01-10',21351843132182),
(4, 'bad room services' ,'2021-01-11',65164651651616)







insert into OlderGuest
values
(10000000000001,'Ahmed','A','Mohie','Egypt',20,'Ahmed@gmail',01114685698,'Single','M'),
(10000000000002,'Farah','A','Mohie','Egypt',20,'farah@gmail',01116485698,'Single','F'),
(10000000000003,'Omar','A','Othman','Egypt',20,'omar@gmail',01236985698,'Single','M'),
(10000000000004,'Reem','A','Mohie','Egypt',20,'reem@gmail',01116548698,'Single','F'),
(10000000000005,'Youssef','A','Mohie','Egypt',20,'mohie@gmail',01116969698,'Single','M'),
(10000000000006,'Menna','H','Hesham','Egypt',20,'menna@gmail',01016985698,'Single','F'),
(10000000000007,'Omar','O','Gamal','Egypt',20,'gamal@gmail',01116985688,'Single','M'),
(10000000000008,'Hannah','T','Hatem','Egypt',20,'hana@gmail',01116900698,'Single','F'),
(10000000000009,'Adel','M','Adam','Egypt',20,'adam@gmail',01116005698,'Single','M'),
(10000000000010,'Amira','M','Gamal','Egypt',20,'mira@gmail',01116205698,'Single','F'),
(10000000000011,'Mohamed','B','Gamal','Egypt',20,'gemy@gmail',01123985698,'Single','M'),
(10000000000012,'Nada','M','Mamdouh','Egypt',20,'nada@gmail',01116321698,'Single','F'),
(10000000000013,'Youssef','H','Hamdy','Egypt',20,'hamdy@gmail',01116985000,'Single','M'),
(10000000000014,'Merna','M','Hossam','Egypt',20,'merna@gmail',01113335698,'Single','F'),
(10000000000015,'Youssef','A','Barqawy','Egypt',20,'barqawy@gmail',01100085698,'Single','M'),
(10000000000016,'Yasmin','C','Yosry','Egypt',20,'yasmin@gmail',01116987778,'Single','F'),
(10000000000017,'Mohamed','M','Magdy','Egypt',20,'magdy@gmail',011888985698,'Single','M'),
(10000000000018,'Noha','M','Montaser','Egypt',20,'noha@gmail',012226985698,'Single','F'),
(10000000000019,'Ashraf','D','Mohie','Egypt',20,'ashro@gmail',01122385698,'Single','M'),
(10000000000020,'Nouran','A','ElKamhawy','Egypt',20,'nour@gmail',010226985698,'Single','F')


insert into Reserved
values
(11,10000000000001),
(22,10000000000002),
(33,10000000000003),
(44,10000000000004),
(55,10000000000005),
(66,10000000000006),
(77,10000000000007),
(88,10000000000008),
(99,10000000000009),
(111,10000000000010),
(112,10000000000011),
(113,10000000000012),
(114,10000000000013),
(115,10000000000014),
(116,10000000000015),
(117,10000000000016),
(118,10000000000017),
(119,10000000000018),
(222,10000000000019),
(223,10000000000020)


insert into PendingGuest
values
(20000000000001,'Ahmed','A','Mohie','Egypt',20,'Ahmed@gmail',01114685698,'Single','M','Full Board'),
(20000000000002,'Farah','A','Mohie','Egypt',20,'farah@gmail',01116485698,'Single','F','Full Board'),
(20000000000003,'Omar','A','Othman','Egypt',20,'omar@gmail',01236985698,'Single','M','Full Board'),
(20000000000004,'Reem','A','Mohie','Egypt',20,'reem@gmail',01116548698,'Single','F','Full Board'),
(20000000000005,'Youssef','A','Mohie','Egypt',20,'mohie@gmail',01116969698,'Single','M','Full Board'),
(20000000000006,'Menna','H','Hesham','Egypt',20,'menna@gmail',01016985698,'Single','F','Full Board'),
(20000000000007,'Omar','O','Gamal','Egypt',20,'gamal@gmail',01116985688,'Single','M','Full Board'),
(20000000000008,'Hannah','T','Hatem','Egypt',20,'hana@gmail',01116900698,'Single','F','Full Board'),
(20000000000009,'Adel','M','Adam','Egypt',20,'adam@gmail',01116005698,'Single','M','Full Board'),
(20000000000010,'Amira','M','Gamal','Egypt',20,'mira@gmail',01116205698,'Single','F','Full Board'),
(20000000000011,'Mohamed','B','Gamal','Egypt',20,'gemy@gmail',01123985698,'Single','M','Full Board'),
(20000000000012,'Nada','M','Mamdouh','Egypt',20,'nada@gmail',01116321698,'Single','F','Full Board'),
(20000000000013,'Youssef','H','Hamdy','Egypt',20,'hamdy@gmail',01116985000,'Single','M','Full Board'),
(20000000000014,'Merna','M','Hossam','Egypt',20,'merna@gmail',01113335698,'Single','F','Full Board'),
(20000000000015,'Youssef','A','Barqawy','Egypt',20,'barqawy@gmail',01100085698,'Single','M','Full Board'),
(20000000000016,'Yasmin','C','Yosry','Egypt',20,'yasmin@gmail',01116987778,'Single','F','Full Board'),
(20000000000017,'Mohamed','M','Magdy','Egypt',20,'magdy@gmail',011888985698,'Single','M','Full Board'),
(20000000000018,'Noha','M','Montaser','Egypt',20,'noha@gmail',012226985698,'Single','F','Full Board'),
(20000000000019,'Ashraf','D','Mohie','Egypt',20,'ashro@gmail',01122385698,'Single','M','Full Board'),
(20000000000020,'Nouran','A','ElKamhawy','Egypt',20,'nour@gmail',010226985698,'Single','F','Full Board')

insert into ReservationRequest 
values
(30000000000001,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,null,'Single',4,'2021-02-01','2021-02-03','Half Board'),
(30000000000002,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,30000000000001,'Single',4,'2021-02-01','2021-02-03','Half Board'),
(30000000000003,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,null,'Single',4,'2021-02-01','2021-02-03','Half Board'),
(30000000000004,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,null,'Single',4,'2021-02-01','2021-02-03','Half Board'),
(30000000000005,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,null,'Single',4,'2021-02-01','2021-02-03','Half Board'),
(30000000000006,'Nour','B','Eldaly','Egypt','M',19,'Nour@yahoo',01229866548,null,'Single',4,'2021-02-01','2021-02-03','Half Board')

insert into Reserving
values
(12,20000000000001),
(13,20000000000002),
(14,20000000000003),
(15,20000000000004),
(16,20000000000005),
(17,20000000000006),
(18,20000000000007),
(19,20000000000008),
(23,20000000000009),
(24,20000000000010),
(25,20000000000011),
(26,20000000000012),
(27,20000000000013),
(28,20000000000014),
(29,20000000000015),
(34,20000000000016),
(35,20000000000017),
(36,20000000000018),
(37,20000000000019),
(38,20000000000020)


insert into Administrators 
values
(123456,'Ahmed','M','ElKamhawy','M','Egyptian', '1940-03-29', 'Giza', 01110879654, 'ahmed@gmail.com', 123456, 100000, null),
(666999,'Mohamed','A','Kamal','M','Egyptian', '1950-01-05', 'Dokki', 01110236547, 'mohamed@gmail.com', 123, 50000, 123456),
(555444,'Mahmoud','B','Omar','M','Egyptian', '1980-05-10', 'Haram', 01110587469, 'mahmoud@gmail.com', 456, 10000, 123456),
(555555,'Mario','M','Essam','M','Egyptian', '1970-10-15', 'October', 01210258745, 'mario@gmail.com', 58, 20000, 123456),
(666666,'Youssef','M','Mokhtar','M','Egyptian', '1970-10-15', 'Faisal', 01510258745, 'mokhtar@gmail.com', 60, 20000, 123456),
(544445,'Nouran','A','ElKamhawy','F','Egyptian', '1965-10-15', 'Dokki', 01010258745, 'noura@gmail.com', 61, 20000, 123456),
(888888,'Ahmed','A','Ashraf','M','Egyptian', '1970-10-20', 'Maadi', 01510258475, 'ashraf@gmail.com', 62, 25000, 123456),
(999999,'Hannah','T','Hatem','F','Egyptian', '1980-10-26', 'Haram', 01510258123, 'hannah@gmail.com', 63, 35000, 123456),
(100000,'Amr','M','Zaki','M','Egyptian', '1990-09-26', 'Haram', 01511558123, 'zika@gmail.com', 65, 40000, 123456),
(222224,'Abdelrahman','A','Amr','M','Egyptian', '1996-05-26', 'Haram', 01510258373, 'abdo@gmail.com', 67, 15000, 123456),
(111112,'Dina','M','Maged','F','Egyptian', '1980-11-30', 'Manial', 01510255723, 'dina@gmail.com', 66, 20000, 123456),
(448551,'Omar','O','Gamal','M','Egyptian', '1991-07-26', 'Dokki', 01047258123, 'omar@gmail.com', 68, 12000, 123456),
(165165,'Adel','M','Adam','M','Egyptian', '1990-04-22', 'October', 01510149123, 'adel@gmail.com', 69, 50000, 123456),
(545645,'Mohamed','M','Hesham','M','Egyptian', '1994-05-26', 'Haram', 01510347123, 'hesham@gmail.com', 70, 5000, 123456),
(654546,'Mohaned','H','Shouman','M','Egyptian', '1991-08-07', 'Haram', 01510343487, 'shouman@gmail.com', 71, 15000, 123456),
(354546,'Menna','H','Hesham','F','Egyptian', '1997-07-26', 'Haram', 01511897123, 'menna@gmail.com', 72, 35000, 123456),
(354313,'Youssef','M','Hamdy','M','Egyptian', '1999-07-23', 'Haram', 01510344892, 'hamdy@gmail.com', 73, 45000, 123456),
(121314,'Youssef','M','Barqawy','M','Egyptian', '1997-06-03', 'Haram', 01531351542, 'barqa@gmail.com', 74, 5000, 123456),
(485213,'Ahmed','I','Elgarf','M','Egyptian', '1997-09-10', 'Giza', 01510343490, 'garf@gmail.com', 75, 85000, 123456),
(213543,'Ammar','H','Yasser','M','Egyptian', '1998-06-09', 'Masr El Gedida', 01510335343, 'doctor@gmail.com', 76, 75000, 123456)


insert into Department 
values
(1,'Restaurant', 666666, '2000-02-12'),
(2,'Room Service', 165165, '2010-05-10'),
(3,'Reception', 354313, '2001-10-15')



insert into StaffMember 
values
(333222,'Amr','M','Zaki','Egyptian','M', '1990-03-29', 'amr@gmail.com', 100,  01110365874, 'Mohandesin',5000, 666666, 1,8),
(666999,'Kamal','A','Basel','Egyptian','M', '2000-01-05', 'kamal@gmail.com', 200,  01110254789, 'Feysal', 6000, 165165, 2,8),
(444777,'Ibrahim','E','Mokhtar','Egyptian','M', '1998-05-10', 'ibrahim@gmail.com', 300, 01110254792,  'Haram', 7000, 354313, 3, 8),
(111444,'Omar','K','Ahmed','Egyptian','M', '1999-10-15', 'omar@gmail.com', 400,  01110258745, 'Maadi',1000,354313,3,8),
(111111,'Youssef','M','Mokhtar','Egyptian','M', '2000-05-10', 'mokhtar@gmail.com', 500,  01110258745, 'Maadi',1000,354313,3,8),
(111122,'Nouran','A','ElKamhawy','Egyptian','F', '2000-04-22', 'noura@gmail.com', 600,  01110258745, 'Dokki',1000,354313,3,8),
(546546,'Ahmed','I','Elgarf','Egyptian','M', '2000-08-15', 'elgarf@gmail.com', 700,  01110253144, 'Giza',4500,165165,2,8),
(543135,'Ammar','H','Yasser','Egyptian','M', '2000-10-05', 'ammar@gmail.com', 800,  01187453144, 'Masr El Gedida',6000,354313,3,8),
(231564,'Ahmed','H','Waleed','Egyptian','M', '1994-05-05', 'awaleed@gmail.com', 900,  01187154544, 'Faisal',4000,666666,1,8),
(313564,'Mohamed','H','Waleed','Egyptian','M', '1997-07-05', 'mwaleed@gmail.com', 1000,  01170654544, 'Faisal',4200,165165,2,8),
(321646,'Kareem','W','Hamdeen','Egyptian','M', '1993-04-10', 'hamido@gmail.com', 1100,  01037154544, 'Haram',3800,666666,1,8),
(645654,'Ahmed','A','Ahdy','Egyptian','M', '1998-10-05', 'ahdy@gmail.com', 1200,  01187846544, 'Faisal',2000,354313,3,8),
(894418,'Ammar','M','Abed','Egyptian','M', '1999-11-09', 'ammar@gmail.com', 1300,  01187846419, 'October',5000,165165,2,8),
(354654,'Amira','A','Hatem','Egyptian','F', '1999-10-04', 'amira@gmail.com', 1400,  01187420419, 'Faisal',7000,666666,1,8),
(532154,'Khaled','A','Magdy','Egyptian','M', '1998-12-26', 'kishoo@gmail.com', 1500,  01187030544, 'Faisal',1000,165165,2,8),
(213564,'Omar','T','Amer','Egyptian','M', '1998-02-03', 'ahdy@gmail.com', 1600,  01291846544, 'Maadi',2000,354313,3,8),
(654128,'Mohamed','S','Sultan','Egyptian','M', '1995-10-03', 'saad@gmail.com', 1700,  01291803844, 'Nasr City',3000,666666,1,8),
(315465,'Nada','M','Mamdouh','Egyptian','F', '1992-12-09', 'nada@gmail.com', 1800,  01031803851, 'Shoubra',4000,666666,1,8),
(347132,'Omar','M','Mokhtar','Egyptian','M', '1988-04-03', 'ommoar@gmail.com', 1900,  01194293844, 'Nasr City',3000,165165,2,8),
(684218,'Asem','M','Mokhtar','Egyptian','M', '1999-04-29', 'asem@gmail.com', 2000,  01121353844, 'Fifth Settlement',2000,354313,3,8)

insert into SpecialOccasions
values
(1,'2021-01-25','Wedding',200,5,40000,13216,'Ammar','H','Yasser',01116468655),
(2,'2021-01-15','Birthday',50,2,5000,32131,'Nouran','A','ElKamhawy',0114646845),
(3,'2021-02-25','Engagement',100,4,20000,45424,'Youssef','M','Mokhtar',01116425635),
(4,'2021-01-16','Graduation Ceremony',100,3,10000,54353,'Ahmed','I','Elgarf',01121556655),
(5,'2021-03-20','Wedding',200,5,40000,53453,'Youssef','M','Mokhtar',01116425635)




insert into FeedBack 
values
(10000000000001,'Good'),
(10000000000002,'Bad'),
(10000000000005,'Terrible'),
(10000000000007, 'Excellent'),
(10000000000008, 'Acceptable'),
(10000000000010, 'Excellent'),
(10000000000011, 'Excellent'),
(10000000000013, 'Good'),
(10000000000020, 'Bad'),
(10000000000015, 'Good'),
(10000000000019, 'Bad'),
(10000000000018, 'Terrible'),
(10000000000012, 'Excellent'),
(10000000000009, 'Good'),
(10000000000004, 'Excellent')





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


 insert into RoomServiceRequest
 values
 (1,1,35454654651665,'Not Fullfilled','Tea','No'),
 (2,2,12345678912345,'Fullfilled','Tea','Yes'),
 (3,3,66546546516513,'Not Fullfilled','Coffee','No'),
 (4,4,31231864612546,'Not Fullfilled','Tea','No'),
 (5,4,31231864612546,'Not Fullfilled','Breakfast','No'),
 (6,4,31231864612546,'Not Fullfilled','Lunch','No'),
 (7,5,65465313848412,'Fullfilled','Tea','Yes'),
 (8,1,35454654651665,'Fullfilled','Soft Drink','Yes'),
 (9,3,66546546516513,'Not Fullfilled','Soft Drink','No'),
 (10,11,87465132183213,'Not Fullfilled','Tea','No')

insert into Occasions
values
('Wedding',40000,200),
('Graduation Ceremony',10000,100),
('Birthday',5000,50),
('Engagement',20000,100)


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
