Computer (Compid, Make, Model, Myear)
create table Computer(
Compid NUMBER PRIMARY KEY,
Make VARCHAR2(40),
Model VARCHAR2(40),
Myear NUMBER
);


Employee (Id, Ename, Doj, Salary, Bonus, Dept, Designation, Manager, Compid)
create table Employee(
id NUMBER PRIMARY KEY,
ename VARCHAR2(40) NOT NULL,
doj DATE NOT NULL Default SYSDATE,
salary NUMBER(9,2) NOT NULL,
bonus NUMBER(9,2) NULL,
dept CHAR(3) NOT NULL check(Dept IN ('ICP','ETA','IVS')),
designation CHAR(3) NOT NULL,
manager NUMBER NULL References EMPLOYEE(ID),
compid NUMBER NULL UNIQUE,References COMPUTER(COMPID)
);
                            
                            
salesman (sid, sname, location)
create table Salesman (
Sid NUMBER PRIMARY KEY,
 Sname VARCHAR2(80) NOT NULL,
 Location VARCHAR2(100)
 );
                            
                            
product (prodid, pdesc, price, category, discount)
create table Product (
Prodid NUMBER PRIMARY KEY,
Pdesc VARCHAR2(80),
Price NUMBER,
Category VARCHAR2(80),
Discount NUMBER
);
                            
                            
sale (saleid, sid, sldate, amount)
create table Sale (
Saleid NUMBER PRIMARY KEY,
Sid References Salesman(Sid),
Sldate date , Amount NUMBER
);
                            
                            
saledetail (saleid, prodid, quantity)
create table Saledetail (
Saleid NUMBER References Sale(Saleid),
Prodid NUMBER ,
Quantity NUMBER
) ;

                            
Dept (Deptno, Dname, Loc)
create table Dept (
Deptno NUMBER PRIMARY KEY,
Dname VARCHAR2(40),
Loc VARCHAR2(70)
);
                            
                            
Emp (Empno, Ename, Job, Mgr, Hiredate, Sal, Comm, Deptno)
create table Emp (
Empno NUMBER PRIMARY KEY,
Ename VARCHAR2(40),
Job VARCHAR2(40),
Mgr NUMBER References Emp(Empno),
Hiredate DATE,
Sal NUMBER,
Comm VARCHAR2(40),
Deptno NUMBER References Dept(Deptno)
);
                            
                            
Vehicle (Vehicleid, Vehiclename)
create table Vehicle (
Vehicleid NUMBER PRIMARY KEY,
Vehiclename VARCHAR2(40)
);
                            
                            
Empvehicle (Empno, Vehicleid) 
create table Empvehicle (
Empno NUMBER References Emp(Empno),
Vehicleid NUMBER References Vehicle(Vehicleid)
);

                            
Item (Itemcode, Itemtype, Descr, Price, Reorderlevel, Qtyonhand, Category)
create table Item (
Itemcode VARCHAR2(20) PRIMARY KEY,
Itemtype VARCHAR2(20), 
Descr VARCHAR2(40), 
Price NUMBER, 
Reorderlevel NUMBER, 
Qtyonhand NUMBER, 
Category VARCHAR2(40)
);
                            
                            
Quotation (Quotationid, Sname, Itemcode, Quotedprice, Qdate, Qstatus)
create table Quotation (
Quotationid VARCHAR2(20) PRIMARY KEY,
Sname VARCHAR2(20),
Itemcode VARCHAR2(20) REFERENCES Item(Itemcode),
Quotedprice NUMBER,
Qdate DATE,
Qstatus VARCHAR2(20)
);
                            
                            
Orders (Orderid, Quotationid, Qtyordered, Orderdate, Status, Pymtdate, Delivereddate, Amountpaid, Pymtmode)
create table Orders (
Orderid VARCHAR2(20) PRIMARY KEY, 
Quotationid VARCHAR2(20) REFERENCES Quotation(Quotationid), 
Qtyordered NUMBER, 
Orderdate DATE, 
Status VARCHAR2(20), 
Pymtdate DATE, 
Delivereddate DATE, 
Amountpaid NUMBER, 
Pymtmode VARCHAR2(20)
);
                            
                            
Retailoutlet (Roid, Location, Managerid)
create table Retailoutlet (
Roid VARCHAR2(20) PRIMARY KEY,
 Location VARCHAR2(20),
 Managerid NUMBER
 );
                            
                            
Empdetails (Empid, Empname, Designation, Emailid, Contactno, Worksin, Salary)
create table Empdetails (
Empid NUMBER PRIMARY KEY,
 Empname VARCHAR2(20),
 Designation VARCHAR2(20),
 Emailid VARCHAR2(40),
 Contactno NUMBER,
 Worksin VARCHAR2(20),
 Salary NUMBER
 );
                            
                            
Retailstock (Roid, Itemcode, Unitprice, Qtyavailable) 
create table Retailstock (
Roid VARCHAR2(20) REFERENCES Retailoutlet(Roid),
 Itemcode VARCHAR2(20) REFERENCES Item(Itemcode),
 Unitprice NUMBER,
 Qtyavailable NUMBER
 );


Customer (Custid, Custtype, Custname, Gender, Spouse, Emailid, Address) 
create table Customer (
Custid NUMBER PRIMARY KEY, 
 Custtype VARCHAR2(20),
 Custname VARCHAR2(20),
 Gender CHAR(1),
 Spouse VARCHAR2(20),
 Emailid VARCHAR2(40),
 Address VARCHAR2(50)
 );
 
 
Purchasebill (Billid, Roid, Itemcode, Custid, Billamount, Billdate, Quantity)                            
create table Purchasebill (
Billid VARCHAR2(20) PRIMARY KEY,
 Roid VARCHAR2(20) REFERENCES Retailoutlet(Roid),
 Itemcode VARCHAR2(20) REFERENCES Item(Itemcode),
 Custid NUMBER REFERENCES Customer(Custid),
 Billamount NUMBER,
 Billdate DATE,
 Quantity NUMBER
 );
                            
