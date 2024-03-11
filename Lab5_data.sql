create table Student(regno varchar(9), name varchar(20), major varchar(15), bdate date);
alter table Student add primary key(regno);
create table Course(course# int, cname varchar(15), dept varchar(10), primary key(course#));
create table Enroll(regno varchar(9), course# int, sem int, book_isbn int, primary key(course#, regno));
alter table Enroll add foreign key(regno) references Student(regno);
create table Book_Adoption(course# int, sem int, book_isbn int, primary key(course#, sem,book_isbn));
create table Text(book_isbn int, booktitle varchar(20), publisher varchar(12), author varchar(15), primary key(book_isbn));

insert into Student(regno,name,major,bdate) values
    ('220953594','Sakshi Arjun','Comp.Sci','19-Aug-2004'),
    ('220953612','Pratham Singh','Comp.Sci','10-Jun-2004'),
    ('220904122','Yuvraj Narula','Business Econ','04-Sep-2004'),
    ('220912305','Isha Shirsat','Psychology','26-Jul-2004'),
    ('220904767','Sahil Mehta','Economics','13-Nov-2004'),
    ('220962031','Vivaan Shetty','Mechanical Eng.','07-Apr-2004');

insert into Course(course#,cname,dept) values
    (2308,'Java Basics','CSE'),
    (2319,'Java Advance','CSE'),
    (2355,'OOP Basics','CSE'),
    (2367,'OOP Advance','CSE'),
    (8011,'Thermodynamics','Mechanical'),
    (5698,'Air Dynamics','Mechanical'),
    (8012, 'Marketing','Economics'),
    (8022, 'Finance','Economics');

insert into Enroll(regno,course#,sem,book_isbn) values
    ('220953612',2308,1,2308054),
    ('220953612',2355,1,2355032),
    ('220904122',8012,2,8012067),
    ('220904767',8012,2,8012067),
    ('220904122',2308,1,2308054),
    ('220962031',5691,2,5691008);

insert into book_adoption(course#,sem,book_isbn) values
    (8012,2,8012067),
    (8012,1,8012067),
    (8022,2,8022055),
    (5691,1,5691008),
    (5691,2,5691008),
    (5691,2,5691021),
    (2308,1,2308054);

insert into text(book_isbn,booktitle,publisher,author) values
    (2308054,'Programming in Java','Penguin','Akshay K.C.'),
    (2355032,'Basics of OOP','Penguin','Pooja S'),
    (5691008,'Heat Thermo','Ostrich','Prakash K'),
    (8012067,'Wall St Journal','Ostrich','Raviraj H'),
    (8022055,'Losing Money','Donkey','Sathish R')
    (5691021,'Water Thermo','Ostrich','Prakash K');

