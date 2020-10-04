--Item and RetailOutlet

INSERT INTO CUSTOMER VALUES(2001,'Regular','John','M',2004,'john@easy.com','Allen Street, New York');
INSERT INTO CUSTOMER VALUES(2002,'Regular','Jason','M',2005,'jason@adgm.in','Richmond Parkway, California');
INSERT INTO CUSTOMER VALUES(2003,'Privileged','Sam','M',NULL,'sam@xyz.corp','Ann Street, New York');
INSERT INTO CUSTOMER VALUES(2004,'Privileged','Susan','F',2001,'susan@adgm.in','Allen Street, New York');
INSERT INTO CUSTOMER VALUES(2005,'Privileged','Nancy','F',2002,'nancy@xyz.corp','East Fork Road, California');
INSERT INTO CUSTOMER VALUES(2006,'Regular','Rachel','F',2007,'rachel1@easy.com','Charles Street, New York');
INSERT INTO CUSTOMER VALUES(2007,'Regular','Dexter','M',2006,'dexter2@easy.com','Beak Street, New York');
INSERT INTO CUSTOMER VALUES(2008,'Regular','Thomas','M',2009,'thomas3@easy.com','Sand Hill Road, California');
INSERT INTO CUSTOMER VALUES(2009,'Regular','Christina','F',2008,'christina4@easy.com','Sand Hill Road, California');
INSERT INTO CUSTOMER VALUES(2010,'Regular','Megan','F',NULL,'megan5@easy.com','Richmond Parkway, California');


INSERT INTO EMPDETAILS VALUES(1001,'George','Administrator','george@easy.com',9045827834,'R1001',6000);
INSERT INTO EMPDETAILS VALUES(1002,'Kevin','Manager','kevin@easy.com',9045827834,'R1001',6500);
INSERT INTO EMPDETAILS VALUES(1003,'Lisa','Billing Staff','lisa@easy.com',9045827834,'R1001',3000);
INSERT INTO EMPDETAILS VALUES(1004,'Allen','Super Manager','allen@easy.com',9045827834,NULL,9000);
INSERT INTO EMPDETAILS VALUES(1005,'Peter','Administrator','peter@easy.com',8923610836,'R1002',6000);
INSERT INTO EMPDETAILS VALUES(1006,'John','Manager','john@easy.com',7290470269,'R1002',6500);
INSERT INTO EMPDETAILS VALUES(1007,'Sam','Billing Staff','sam@easy.com',8038106739,'R1002',3000);
INSERT INTO EMPDETAILS VALUES(1008,'Megan','Manager','megan5@easy.com',9481089403,'R1002',5000);
INSERT INTO EMPDETAILS VALUES(1009,'Henry','Billing Staff','henry@easy.com',7820179403,'R1002',5000);
INSERT INTO EMPDETAILS VALUES(1010,'Cris','Billing Staff','cris@easy.com',9286720849,'R1001',2800);
INSERT INTO EMPDETAILS VALUES(1011,'Donald','Billing Staff','donald@easy.com',7490729739,'R1001',2900);
INSERT INTO EMPDETAILS VALUES(1012,'Edwin','Billing Staff','edwin@easy.com',9820984728,'R1002',2500);
INSERT INTO EMPDETAILS VALUES(1013,'Clara','Security','clara@easy.com',9387109378,'R1001',2000);
INSERT INTO EMPDETAILS VALUES(1014,'Michael','Security','michael@easy.com',9387109378,'R1002',2000);

INSERT INTO ITEM VALUES('I1001','FMCG','Britannia Marie Gold Cookies',20,100,1000,'C');
INSERT INTO ITEM VALUES('I1002','FMCG','Best Rice',120,100,1000,'C');
INSERT INTO ITEM VALUES('I1003','FMCG','Modern Bread',15,100,1000,'C');
INSERT INTO ITEM VALUES('I1004','Apparels','Lee T-Shirt',300,100,1000,'B');
INSERT INTO ITEM VALUES('I1005','Apparels','Levis T-Shirt',1700,100,1000,'B');
INSERT INTO ITEM VALUES('I1006','Apparels','Satyapaul Sari',7300,100,1000,'A');
INSERT INTO ITEM VALUES('I1007','Apparels','Allen Solly Tie',600,100,1000,'C');
INSERT INTO ITEM VALUES('I1008','Computer','Xbox gamepad',1500,100,50,'B');
INSERT INTO ITEM VALUES('I1009','Computer','Microsoft Mouse',700,120,50,'C');
INSERT INTO ITEM VALUES('I1010','Computer','Intel C2D Processor',6500,50,25,'A');
INSERT INTO ITEM VALUES('I1011','Computer','Intel Motherboard',5000,50,25,'A');
INSERT INTO ITEM VALUES('I1012','Computer','500GB Hard disk',2500,150,50,'B');
INSERT INTO ITEM VALUES('I1013','Computer','320GB Hard disk',1800,150,50,'B');
INSERT INTO ITEM VALUES('I1014','FMCG','Aroma Bread',17,100,50,'C');
INSERT INTO ITEM VALUES('I1015','Apparels','Arrow Jeans',7300,50,60,'A');


INSERT INTO ORDERS VALUES('O1001','Q1002',100,'30-Oct-14','Delivered','05-11-2014','05-11-2014',140000,'Cash');
INSERT INTO ORDERS VALUES('O1002','Q1006',150,'01-12-2014','Ordered',NULL,NULL,NULL,NULL);
INSERT INTO ORDERS VALUES('O1003','Q1003',50,'15-12-2014','Delivered','18-12-2014','20-12-2014',310000,'Cash');
INSERT INTO ORDERS VALUES('O1004','Q1006',100,'15-12-2014','Delivered','25-12-2014','30-12-2014',80000,'Cheque');
INSERT INTO ORDERS VALUES('O1005','Q1002',50,'30-01-2015','Delivered','01-02-2015','03-02-2015',70000,'Cheque');
INSERT INTO ORDERS VALUES('O1006','Q1008',75,'20-02-2015','Delivered','22-02-2015','23-02-2015',161250,'Cash');
INSERT INTO ORDERS VALUES('O1007','Q1009',50,'25-06-2015','Ordered',NULL,NULL,NULL,NULL);
INSERT INTO ORDERS VALUES('O1008','Q1013',75,'25-06-2015','Ordered',NULL,NULL,NULL,NULL);

INSERT INTO PURCHASEBILL VALUES(5001,'R1001','I1002',2001,342.38,'02-06-2015',3);
INSERT INTO PURCHASEBILL VALUES(5002,'R1001','I1001',2002,86.62,'02-06-2015',4);
INSERT INTO PURCHASEBILL VALUES(5003,'R1001','I1004',2002,359.71,'03-06-2015',1);
INSERT INTO PURCHASEBILL VALUES(5004,'R1002','I1003',2003,64.2,'03-06-2015',3);
INSERT INTO PURCHASEBILL VALUES(5005,'R1002','I1002',2005,283.28,'03-06-2015',2);
INSERT INTO PURCHASEBILL VALUES(5006,'R1002','I1004',2004,1222.8,'05-06-2015',3);
INSERT INTO PURCHASEBILL VALUES(5007,'R1002','I1013',2007,2344.21,'05-06-2015',1);
INSERT INTO PURCHASEBILL VALUES(5008,'R1002','I1007',2002,1628.36,'06-06-2015',2);
INSERT INTO PURCHASEBILL VALUES(5009,'R1001','I1011',2005,5441.46,'08-06-2015',1);
INSERT INTO PURCHASEBILL VALUES(5010,'R1001','I1013',2007,8983.5,'08-06-2015',4);
INSERT INTO PURCHASEBILL VALUES(5011,'R1001','I1015',2002,7846.3,'08-06-2015',1);
INSERT INTO PURCHASEBILL VALUES(5012,'R1002','I1008',2004,5092.96,'10-06-2015',2);
INSERT INTO PURCHASEBILL VALUES(5013,'R1002','I1010',2008,6930.22,'10-06-2015',1);

INSERT INTO QUOTATION VALUES('Q1001','Giant Store','I1008',1500,'15-10-2014','Rejected');
INSERT INTO QUOTATION VALUES('Q1002','EBATs','I1008',1400,'16-10-2014','Closed');
INSERT INTO QUOTATION VALUES('Q1003','EBATs','I1010',6200,'18-10-2014','Accepted');
INSERT INTO QUOTATION VALUES('Q1004','Shop Zilla','I1010',6250,'20-10-2014','Rejected');
INSERT INTO QUOTATION VALUES('Q1005','Giant Store','I1009',850,'25-11-2014','Rejected');
INSERT INTO QUOTATION VALUES('Q1006','VV Electronics','I1009',800,'25-11-2014','Closed');
INSERT INTO QUOTATION VALUES('Q1007','Shop Zilla','I1012',2200,'15-01-2015','Rejected');
INSERT INTO QUOTATION VALUES('Q1008','Shop Zilla','I1012',2150,'15-01-2015','Accepted');
INSERT INTO QUOTATION VALUES('Q1009','Shop Zilla','I1005',1480,'15-06-2015','Accepted');
INSERT INTO QUOTATION VALUES('Q1010','Giant Store','I1005',1490,'15-06-2015','Rejected');
INSERT INTO QUOTATION VALUES('Q1011','EBATs','I1002',120,'16-06-2015','Rejected');
INSERT INTO QUOTATION VALUES('Q1012','VV Electronics','I1002',120,'16-06-2015','Rejected');
INSERT INTO QUOTATION VALUES('Q1013','Giant Store','I1012',2150,'16-06-2015','Accepted');

INSERT INTO RETAILOUTLET VALUES('R1001','California',1002);
INSERT INTO RETAILOUTLET VALUES('R1002','New York',1006);
INSERT INTO RETAILOUTLET VALUES('R1003','Dallas',NULL);

INSERT INTO RETAILSTOCK VALUES('R1001','I1001',21.25,28);
INSERT INTO RETAILSTOCK VALUES('R1001','I1002',112,20);
INSERT INTO RETAILSTOCK VALUES('R1001','I1003',18.5,20);
INSERT INTO RETAILSTOCK VALUES('R1001','I1004',353,100);
INSERT INTO RETAILSTOCK VALUES('R1001','I1007',709,50);
INSERT INTO RETAILSTOCK VALUES('R1001','I1006',7350,20);
INSERT INTO RETAILSTOCK VALUES('R1001','I1010',6199,100);
INSERT INTO RETAILSTOCK VALUES('R1001','I1011',5340,150);
INSERT INTO RETAILSTOCK VALUES('R1001','I1012',2510,50);
INSERT INTO RETAILSTOCK VALUES('R1001','I1013',2204,50);
INSERT INTO RETAILSTOCK VALUES('R1001','I1015',7700,60);
INSERT INTO RETAILSTOCK VALUES('R1002','I1001',25.25,25);
INSERT INTO RETAILSTOCK VALUES('R1002','I1002',139,50);
INSERT INTO RETAILSTOCK VALUES('R1002','I1003',21,20);
INSERT INTO RETAILSTOCK VALUES('R1002','I1004',400,110);
INSERT INTO RETAILSTOCK VALUES('R1002','I1005',1751,60);
INSERT INTO RETAILSTOCK VALUES('R1002','I1006',7499,50);
INSERT INTO RETAILSTOCK VALUES('R1002','I1007',799,20);
INSERT INTO RETAILSTOCK VALUES('R1002','I1008',2499,70);
INSERT INTO RETAILSTOCK VALUES('R1002','I1009',903,80);
INSERT INTO RETAILSTOCK VALUES('R1002','I1010',6801,20);
INSERT INTO RETAILSTOCK VALUES('R1002','I1011',5402,30);
INSERT INTO RETAILSTOCK VALUES('R1002','I1012',2900.5,130);
INSERT INTO RETAILSTOCK VALUES('R1002','I1013',2300.5,60);
INSERT INTO RETAILSTOCK VALUES('R1002','I1014',29.25,75);
INSERT INTO RETAILSTOCK VALUES('R1002','I1015',7400,65);
INSERT INTO RETAILSTOCK VALUES('R1003','I1012',3000.5,50);
INSERT INTO RETAILSTOCK VALUES('R1003','I1015',7800,40);
INSERT INTO RETAILSTOCK VALUES('R1003','I1008',2600,30);

COMMIT;

--Sales Related
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(1, Peter, London);
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(2, Michael, Paris);
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(3,John, Mumbai);
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(4,Harry, Chicago);
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(5,Kevin, London);
INSERT INTO SALESMAN(SID, SNAME, LOCATION) VALUES(6,Alex, Chicago);

INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(101, Basketball, 10, Sports, 5);
INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(102, Shirt, 20, Apparel, 10);
INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(103, NULL, 30, Electronics, 15);
INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(104, Cricket Bat, 20, Sports, 20);
INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(105, Trouser, 10, Apparel, 5);
INSERT INTO PRODUCT(PRODID, PDESC, PRICE, CATEGORY, DISCOUNT) VALUES(106, Television, 40, ELECTRONICS, 20);

INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1001, 1, 01-Jan-14, NULL);
INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1002, 5, 02-Jan-14, NULL);
INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1003, 4, 01-Feb-14, NULL);
INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1004, 1, 01-Mar-14, NULL);
INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1005, 2, 01-Feb-14, NULL);
INSERT INTO SALE(SALEID, SID, SLDATE, AMOUNT) VALUES(1006, 1, 01-Jun-15, NULL);


INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1001, 106, 2);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1001, 103, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1002, 102, 5);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1002, 101, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1003, 104, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1003, 101, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1004, 103, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1004, 104, 2);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1004, 106, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1005, 101, 3);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1005, 106, 1);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1006, 102, 6);
INSERT INTO SALEDETAIL (SALEID, PRODID, QUANTITY) VALUES(1006, 104, 1);




--Vehicles Related
INSERT INTO DEPT VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES(20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES(40,'OPERATIONS','BOSTON');


INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902,'17-Dec-80',800,NULL,20);
INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698,'20-Feb-81',1600,300,30);
INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698,'22-Feb-81',1250,500,30);
INSERT INTO EMP VALUES(7566,'JIM','MANAGER',7839,'02-Apr-81',2975,NULL,20);
INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698,'28-Sep-81',1250,1400,30);
INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839,'01-May-81',2850,NULL,30);
INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839,'09-Jun-81',2450,NULL,10);
INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566,'19-Apr-87',3000,NULL,20);
INSERT INTO EMP VALUES(7839,'JACK','PRESIDENT',NULL,'17-Nov-81',5000,NULL,10);
INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698,'08-Sep-81',1500,0,30);
INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788,'23-May-87',1100,NULL,20);
INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698,'03-Dec-81',950,NULL,30);
INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566,'03-Dec-81',3000,NULL,20);
INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782,'23-Jan-82',1300,NULL,10);

INSERT INTO VEHICLE VALUES(2001,'Toyota');
INSERT INTO VEHICLE VALUES(2002,'Maruti');
INSERT INTO VEHICLE VALUES(2004,'Nissan');
INSERT INTO VEHICLE VALUES(2003,'Hyundai');
INSERT INTO VEHICLE VALUES(2005,'Volkswagen');
INSERT INTO VEHICLE VALUES(2006,'Honda');
INSERT INTO VEHICLE VALUES(2007,'Benz');

INSERT INTO EMPVEHICLE VALUES(7566,2001);
INSERT INTO EMPVEHICLE VALUES(7698,2002);
INSERT INTO EMPVEHICLE VALUES(7788,2003);
INSERT INTO EMPVEHICLE VALUES(7839,2002);
INSERT INTO EMPVEHICLE VALUES(7902,2004);

--CompAndEmp
INSERT INTO COMPUTER VALUES (1001,'Dell','Vostro',2013);
INSERT INTO COMPUTER VALUES (1002,'Dell','Precision',2014);
INSERT INTO COMPUTER VALUES (1003,'Lenovo','Edge',2013);
INSERT INTO COMPUTER VALUES (1004,'Lenovo','Horizon',2014);

INSERT INTO EMPLOYEE(ID, ENAME, DOJ, SALARY, BONUS, DEPT, DESIGNATION, MANAGER, COMPID) VALUES(1, James Potter, 01-Jun-14, 75000, 1000, ICP, PM, NULL, 1001);
INSERT INTO EMPLOYEE(ID, ENAME, DOJ, SALARY, BONUS, DEPT, DESIGNATION, MANAGER, COMPID) VALUES(2, Ethan McCarty, 01-Feb-14, 90000, 1200, ETA, PM, NULL, NULL);
INSERT INTO EMPLOYEE(ID, ENAME, DOJ, SALARY, BONUS, DEPT, DESIGNATION, MANAGER, COMPID) VALUES(3, Emily Rayner, 01-Jan-14, 25000, 100, ETA, SE, 2, 1002);
INSERT INTO EMPLOYEE(ID, ENAME, DOJ, SALARY, BONUS, DEPT, DESIGNATION, MANAGER, COMPID) VALUES(4, Jack Abraham, 01-Jul-14, 30000, NULL, ETA, SSE, 2, NULL);
INSERT INTO EMPLOYEE(ID, ENAME, DOJ, SALARY, BONUS, DEPT, DESIGNATION, MANAGER, COMPID) VALUES(5, Ayaz Mohammad, 01-Apr-14, 40000, NULL, ICP, TA, 1, 1003);  


