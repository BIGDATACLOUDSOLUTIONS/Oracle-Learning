--Computer (Compid, Make, Model, Myear)
create table Computer(
Compid int PRIMARY KEY,
Make VARCHAR(40),
Model VARCHAR(40),
Myear int
);


--Employee (Id, Ename, Doj, Salary, Bonus, Dept, Designation, Manager, Compid)
create table Employee(
id int PRIMARY KEY,
ename VARCHAR(40) NOT NULL,
doj DATE NOT NULL Default GETDATE(),
salary decimal(9,2) NOT NULL,
bonus decimal(9,2) NULL,
dept CHAR(3) NOT NULL check(Dept IN ('ICP','ETA','IVS')),
designation CHAR(3) NOT NULL,
manager int NULL FOREIGN KEY References EMPLOYEE(ID),
compid int FOREIGN KEY REFERENCES COMPUTER(COMPID)
);

--salesman (sid, sname, location)
create table Salesman (
Sid int PRIMARY KEY,
Sname VARCHAR(80) NOT NULL,
Location VARCHAR(100)
);


--product (prodid, pdesc, price, category, discount)
create table Product (
Prodid int PRIMARY KEY,
Pdesc VARCHAR(80),
Price int,
Category VARCHAR(80),
Discount int
);


--sale (saleid, sid, sldate, amount)
create table Sale (
Saleid int PRIMARY KEY,
Sid int References Salesman(Sid),
Sldate date , Amount int
);


--saledetail (saleid, prodid, quantity)
create table Saledetail (
Saleid int References Sale(Saleid),
Prodid int ,
Quantity int
) ;


--Dept (Deptno, Dname, Loc)
create table Dept (
Deptno int PRIMARY KEY,
Dname VARCHAR(40),
Loc VARCHAR(70)
);


--Emp (Empno, Ename, Job, Mgr, Hiredate, Sal, Comm, Deptno)
create table Emp (
Empno int PRIMARY KEY,
Ename VARCHAR(40),
Job VARCHAR(40),
Mgr int ,--FOREIGN KEY References Emp(Empno),
Hiredate DATE,
Sal int,
Comm VARCHAR(40),
Deptno int FOREIGN KEY References Dept(Deptno)
);


--Vehicle (Vehicleid, Vehiclename)
create table Vehicle (
Vehicleid int PRIMARY KEY,
Vehiclename VARCHAR(40)
);


--Empvehicle (Empno, Vehicleid)
create table Empvehicle (
Empno int References Emp(Empno),
Vehicleid int References Vehicle(Vehicleid)
);


--Item (Itemcode, Itemtype, Descr, Price, Reorderlevel, Qtyonhand, Category)
create table Item (
Itemcode VARCHAR(20) PRIMARY KEY,
Itemtype VARCHAR(20), 
Descr VARCHAR(40), 
Price int,
Reorderlevel int,
Qtyonhand int,
Category VARCHAR(40)
);


--Quotation (Quotationid, Sname, Itemcode, Quotedprice, Qdate, Qstatus)
create table Quotation (
Quotationid VARCHAR(20) PRIMARY KEY,
Sname VARCHAR(20),
Itemcode VARCHAR(20) REFERENCES Item(Itemcode),
Quotedprice int,
Qdate DATE,
Qstatus VARCHAR(20)
);


--Orders (Orderid, Quotationid, Qtyordered, Orderdate, Status, Pymtdate, Delivereddate, Amountpaid, Pymtmode)
create table Orders (
Orderid VARCHAR(20) PRIMARY KEY, 
Quotationid VARCHAR(20) REFERENCES Quotation(Quotationid),
Qtyordered int,
Orderdate DATE, 
Status VARCHAR(20), 
Pymtdate DATE, 
Delivereddate DATE, 
Amountpaid int,
Pymtmode VARCHAR(20)
);


--Retailoutlet (Roid, Location, Managerid)
create table Retailoutlet (
Roid VARCHAR(20) PRIMARY KEY,
Location VARCHAR(20),
Managerid int
);


--Empdetails (Empid, Empname, Designation, Emailid, Contactno, Worksin, Salary)
create table Empdetails (
Empid int PRIMARY KEY,
Empname VARCHAR(20),
Designation VARCHAR(20),
Emailid VARCHAR(40),
Contactno bigint,
Worksin VARCHAR(20),
Salary int
);


--Retailstock (Roid, Itemcode, Unitprice, Qtyavailable)
create table Retailstock (
Roid VARCHAR(20) REFERENCES Retailoutlet(Roid),
Itemcode VARCHAR(20) REFERENCES Item(Itemcode),
Unitprice int,
Qtyavailable int
);


--Customer (Custid, Custtype, Custname, Gender, Spouse, Emailid, Address)
create table Customer (
Custid int PRIMARY KEY,
Custtype VARCHAR(20),
Custname VARCHAR(20),
Gender CHAR(1),
Spouse VARCHAR(20),
Emailid VARCHAR(40),
Address VARCHAR(50)
);


--Purchasebill (Billid, Roid, Itemcode, Custid, Billamount, Billdate, Quantity)
create table Purchasebill (
Billid VARCHAR(20) PRIMARY KEY,
Roid VARCHAR(20) REFERENCES Retailoutlet(Roid),
Itemcode VARCHAR(20) REFERENCES Item(Itemcode),
Custid int REFERENCES Customer(Custid),
Billamount int,
Billdate DATE,
Quantity int
);

