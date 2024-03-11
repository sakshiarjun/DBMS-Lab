create table Person (driver_id varchar(9), Name varchar(10), Address varchar(30), primary key(driver_id));
create table Car(RegNo varchar(10), Model varchar(15), Year int, primary key(RegNo));
create table Accident(Report_Number int, Accd_Date date, Location varchar(20),primary key(Report_Number));
create table Owns(driver_id varchar(9), RegNo varchar(10));
alter table Owns add primary key(driver_id,RegNo);
create table Participated (driver_id varchar(9), RegNo varchar(10), Report_Number int, Damage_Amount int, primary key(driver_id, RegNo, Report_Number));
insert into Person(driver_id, Name, Address) values 
    (130199,'Pratham','Kolkata, West Bengal'),
    (221204, 'Arushi', 'Jaipur, Rajasthan'),
    ('060789', 'Yuvraj', 'Ranchi, Jharkhand'),
    (150874, 'Adya', 'Mumbai, Maharashtra'),
    (120293, 'Sakshi', 'Pune, Maharashtra'),
    ('070781', 'Rikhav', 'Surat, Gujarat');
insert into Car(RegNo, Model, Year) values 
    ('KA20TA2209','Maruti Suzuki', 2009),
    ('JH01RS0007','Audi X7', 2022),
    ('MH04EX9731','Toyota Yaris', 2018),
    ('MH12KM1010','Vittara Breeza',2020);
insert into Accident(Report_Number, Accd_Date, Location) values 
    (20220721,'17-Jan-2022','Mumbai, Maharashtra'),
    (20210538,'03-Aug-2021','Panaji, Goa'),
    (20220811, '23-Nov-2022','Manipal, Karnataka'),
    (20220845, '16-Dec-2022','Ayodhya, UP'),
    (20200347, '09-Mar-2020','Hyderabad, TN');
insert into Owns(driver_id, RegNo) values
    ('150874','MH04EX9731'),
    ('120293', 'MH12KM1010'),
    ('060789', 'JH01RS0007'),
    ('210590', 'KA20TA2209'),
    ('070781', 'GJ17UV7855');
insert into Participated(driver_id, Name, Address) values 
    ('060789','JH01RS0007',20210538,15000),
    ('060789','JH01RS0007',20220845,10000),
    ('120293','MH12KM1010',20220811,6000),
    ('120293','MH12KM1010',20220721,8500);
