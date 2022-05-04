/*UC1 Creating the database AddressBookService*/
create database AddressBookService;

use AddressBookService;

/*UC2 Creating address book table with first name, last name,address,city,state,phone number,Zipcode,email address*/
create table AddressBookTable
(
PersonId int identity(1,1) primary key,
FirstName varchar(20) ,
LastName varchar(20),
Address varchar(50),
City varchar(20),
State varchar(20),
ZipCode varchar(10),
PhoneNumber varchar(20),
EmailId varchar(30)
);

/* UC3  Insert New Contacts in AddressBookService */
Insert into AddressBookTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Sumit','Patel','Ugwa','Akola','Maharashtra','444006','9890989088','Sumit@gmail.com'),
('Viraj','Patil','Atal Marg','Nagpur','Vidarbha','444009','9745564565','Virat@gmail.com'),
('Virat','Kohli','Bandra','Mumbai','Maha','000001','9995895695','Virat@gmail.com'),
('Rohit','Sharma','Rajchowk','Rajkot','Gujrat','555009','9922016025','Rohit019@gmail.com'),
('Ajay','Singh','JJSquare','Pune','MH','444111','8888553331','Ajay1565@gmail.com');

/* UC4 Edit existing contact person using their name */
UPDATE AddressBookTable set State='Goa' where FirstName='Sumit' or FirstName='Viraj'

/* UC5 Delete contact by name */
Delete from AddressBookTable where FirstName='Rohit'

/* UC6 Retrieve Person belonging to a City or State */
SELECT * from AddressBookTable where State='Maharashtra' or State='Gujrat';

/* UC7 Count of address book by City and State */
select count(City) from AddressBookTable ;
select count(State) from AddressBookTable ;

/*UC8-Ability to retrieve entries sorted alphabetically by Person’s name for A given city */
select City from AddressBookTable  order by FirstName;

/* UC9 Ability to identify each Address Book with name and Type. */
ALTER table AddressBookTable ADD PersonType VARCHAR(20);
Select * from AddressBookTable

SELECT * FROM AddressBookTable
update AddressBookTable  set PersonType ='myself' where FirstName='Sumit'; 
update AddressBookTable  set PersonType ='friend' where FirstName='Ajay';
update AddressBookTable  set PersonType ='brother' where FirstName='Virat';

/* UC10-COUNT BY TYPE */
select count(PersonType) from AddressBookTable;

/*UC11-Ability To Add Person To Both Family And Friend*/
Insert into AddressBookTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId,PersonType) values 
('Disha','Patel','JJMall','Amravti','MAHA','444402','8888656545','Disha@gmail.com',' Friend'),
('Raj','Sangvi','KC Road','Kanpur','UP','101236','9989565656','Raj564@gmail.com','Friend')




