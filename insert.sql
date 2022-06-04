# Insert Statements for Rental Location table

INSERT ALL
INTO RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,City,State)
VALUES
(101,'9726031111','adamsmith@gmail.com','980 Addison Road','Dallas','TX')
INTO RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,City,State)
VALUES
(102,'9726032222','bobw@gmail.com',' 111, Berlington Road ', 'Dallas','TX')
INTO RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,City,State)
VALUES
(103,'9721903121','patric.clever@gmail.com',' 9855 Shadow Way', 'Dallas','TX')
INTO RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,City,State)
VALUES
(104,'721903121',NULL,'434 Harrodswood Road', 'Irving','TX')
INTO RENTAL_LOCATION
(Location_ID,Phone,Email,Street_Name,City,State)
VALUES
(105,'5026981045','julier@gmail.com','7788 internal Drive','Irving','TX')
SELECT * FROM Dual;

# Insert Statements for Car Class table

INSERT ALL
INTO CAR_CLASS
(Car_Class,Daily_Rate,Weekly_Rate)
VALUES
('Economy',19.95,122.95)
INTO CAR_CLASS
(Car_Class,Daily_Rate,Weekly_Rate)
VALUES
('Standard',29.95,192.95)
INTO CAR_CLASS
(Car_Class,Daily_Rate,Weekly_Rate)
VALUES
('SUV',89.95,605.95)
INTO CAR_CLASS
(Car_Class,Daily_Rate,Weekly_Rate)
VALUES
('MiniVan',109.95,725.95)
INTO CAR_CLASS
(Car_Class,Daily_Rate,Weekly_Rate)
VALUES
('Premium',149.95,1015.95)
SELECT * FROM dual;

# Insert Statements for Customer table

INSERT ALL
INTO CUSTOMER
(License_Number,license_state,FName,MName,Lname,Address,Phone,DOB)
VALUES
('E12905109','TX','Patrick','G','Cleaver','1701 N.Campbell Rd,
Dallas, TX-75243','5022196058',TO_DATE('1970/01/10', 'yyyy/mm/dd'))
INTO CUSTOMER
(License_Number,license_state,FName,MName,Lname,Address,Phone,DOB)
VALUES
('C11609103','TX','Courtney',NULL,'Rollins','1530 S.Campbell
Rd','4697891045',TO_DATE('1990/03/20', 'yyyy/mm/dd'))
INTO CUSTOMER
(License_Number,license_state,FName,MName,Lname,Address,Phone,DOB)
VALUES
('G30921561','TX','Glenn',NULL,'Tucker','101 Meritline
drive','8590125607',TO_DATE('1964/11/11', 'yyyy/mm/dd'))
INTO CUSTOMER
(License_Number,license_state,FName,MName,Lname,Address,Phone,DOB)
VALUES
('R12098127','NJ','Ron',NULL,'Harper','43 Greenville
Road','2048015647',TO_DATE('1987/04/24', 'yyyy/mm/dd'))
INTO CUSTOMER
(License_Number,license_state,FName,MName,Lname,Address,Phone,DOB)
VALUES
('M12098127','NY','Manoj',NULL,'Punwani','43 Greenville
Road','2048015647',TO_DATE('1987/04/24', 'yyyy/mm/dd'))
SELECT * FROM dual;

# Insert Statements for Card table

INSERT ALL
INTO CARD
(Name_On_Card,Card_Number,Expiry_Date,CVV,Billing_Address)
VALUES
('Courtney Rollins','4735111122223333',TO_DATE('2018/01/15', 'yyyy/
mm/dd'),'833','1530 S.Campbell Rd, Dallas, TX 75251')
INTO CARD                                                                                                                        
(Name_On_Card,Card_Number,Expiry_Date,CVV,Billing_Address)
VALUES
('Manoj Punwani','4233908110921001',TO_DATE('2019/12/31', 'yyyy/mm/
dd'),'419','9855 Shadow Way, TX 75243')
SELECT * FROM dual; 

# Insert Statements for Car Model table

INSERT ALL
INTO CAR_MODEL
(Model_Name,Year,Make)
VALUES
('Mazda3','2007','Mazda')
INTO CAR_MODEL
(Model_Name,Year,Make)
VALUES
('Toyota Camry','2012','Toyota')                        
INTO CAR_MODEL
(Model_Name,Year,Make)
VALUES
('BMW X5','2015','BMW')
INTO CAR_MODEL
(Model_Name,Year,Make)
VALUES
('Acura MDX','2014','Acura')
INTO CAR_MODEL
(Model_Name,Year,Make)
VALUES
('Sienna','2013','Toyota')
SELECT * FROM dual; 

# Insert Statements for Car table

INSERT ALL
INTO CAR
(VIN,Location_ID,Status,Car_Class,Model_name)
VALUES
('F152206785240289',101,'Available','Economy','Mazda3')
INTO CAR
(VIN,Location_ID,Status,Car_Class,Model_name)
VALUES
('T201534710589051',101,'Available','Standard','Toyota Camry')
INTO CAR
(VIN,Location_ID,Status,Car_Class,Model_name)
VALUES
('E902103289341098',102,'Available','Premium','BMW')
INTO CAR
(VIN,Location_ID,Status,Car_Class,Model_name)
VALUES                                                                                                    
('R908891209418173',103,'Unavailable','SUV','Acura MDX')
INTO CAR
(VIN,Location_ID,Status,Car_Class,Model_name)
VALUES
('N892993994858292',104,'Available','MiniVan','Sienna')
SELECT * FROM dual; 

# Insert Statements for Customer table

INSERT ALL
INTO RESERVATION
(Reservation_ID,Date_in,Date_out,Location_ID,Car_Class,License_Number)
VALUES
(1,TO_DATE('2021/11/06', 'yyyy/mm/dd'),TO_DATE('2021/11/12', 'yyyy/mm/dd'),101,'Standard','E12905109')
INTO RESERVATION
(Reservation_ID,Date_in,Date_out,Location_ID,Car_Class,License_Number)
VALUES
(2,TO_DATE('2015/10/20', 'yyyy/mm/dd'),TO_DATE('2015/10/24', 'yyyy/mm/dd'),101,'MiniVan','M12098127')
INTO RESERVATION
(Reservation_ID,Date_in,Date_out,Location_ID,Car_Class,License_Number)
VALUES
(3,TO_DATE('2015/12/06', 'yyyy/mm/dd'),TO_DATE('2015/12/12', 'yyyy/mm/dd'),104,'Economy','G30921561')
INTO RESERVATION
(Reservation_ID,Date_in,Date_out,Location_ID,Car_Class,License_Number)
VALUES
(4,TO_DATE('2015/09/01', 'yyyy/mm/dd'),TO_DATE('2015/09/02', 'yyyy/mm/dd'),103,'Economy','C11609103')
INTO RESERVATION
(Reservation_ID,Date_in,Date_out,Location_ID,Car_Class,License_Number)
VALUES
(5,TO_DATE('2015/08/13', 'yyyy/mm/dd'),TO_DATE('2015/08/15', 'yyyy/mm/dd'),105,'Standard','R12098127')
SELECT * FROM dual; 

 
INSERT ALL
INTO RENTAL_AGREEMENT
(Contract_number,Current_Date,Actual_End_Date,Odometer_Start,Odometer_End,Actual_cost,Reservation_ID,VIN)
VALUES
(5673,TO_DATE('2021/11/06', 'yyyy/mm/dd'),TO_DATE('2021/11/12', 'yyyy/mm/dd'),81256,81300,230.25,1,'F152206785240289')
INTO RENTAL_AGREEMENT
(Contract_number,Current_Date,Actual_End_Date,Odometer_Start,Odometer_End,Actual_cost,Reservation_ID,VIN)
VALUES
(5674,TO_DATE('2015/10/20', 'yyyy/mm/dd'),TO_DATE('2015/10/24', 'yyyy/mm/dd'),76524,76590,119.80,3,'T201534710589051')
INTO RENTAL_AGREEMENT
(Contract_number,Current_Date,Actual_End_Date,Odometer_Start,Odometer_End,Actual_cost,Reservation_ID,VIN)
VALUES
(5675,TO_DATE('2015/12/06', 'yyyy/mm/dd'),TO_DATE('2015/12/12', 'yyyy/mm/dd'),6594,6699,689.35,5,'E902103289341098')
INTO RENTAL_AGREEMENT
(Contract_number,Current_Date,Actual_End_Date,Odometer_Start,Odometer_End,Actual_cost,Reservation_ID,VIN)
VALUES
(5676,TO_DATE('2015/09/01', 'yyyy/mm/dd'),TO_DATE('2015/09/02', 'yyyy/mm/dd'),51000,51100,114.90,4,'R908891209418173')
INTO RENTAL_AGREEMENT
(Contract_number,Current_Date,Actual_End_Date,Odometer_Start,Odometer_End,Actual_cost,Reservation_ID,VIN)
VALUES
(5677,TO_DATE('2015/08/13', 'yyyy/mm/dd'),TO_DATE('2015/08/15', 'yyyy/mm/dd'),51300,51450,398.90,2,'N892993994858292')
SELECT * FROM dual; 

 

INSERT ALL
INTO PAYMENT
(Payment_ID,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Contract_Number,Saved_Card_No)
VALUES
(1001,'4735111122223333',TO_DATE('2018/01/15', 'yyyy/mm/dd'),'PatricClever','100','1530 S.Campbell Rd, Dallas, TX 75251',5673,NULL)
INTO PAYMENT
(Payment_ID,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Contract_Number,Saved_Card_No)
VALUES
(1002,'4735555522224444',TO_DATE('2019/01/15', 'yyyy/mm/dd'),'Anna Symson','349','240 Feronia Way, Dallas, TX',5674,NULL)
INTO PAYMENT
(Payment_ID,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Contract_Number,Saved_Card_No)
VALUES
(1003,'4735355622274445',TO_DATE('2018/07/15', 'yyyy/mm/dd'),'Andrew Pena','570','120 Midland Ave, Astoria,TX',5675,4735111122223333)
INTO PAYMENT
(Payment_ID,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Contract_Number,Saved_Card_No)
VALUES
(1004,'4233908110921001',TO_DATE('2018/07/15', 'yyyy/mm/dd'),'Sofia Alami','101','135 Passaic Ave, Hoboken,NJ','5676','4233908110921001')
INTO PAYMENT
(Payment_ID,Card_NO,Expiry_Date,Name_On_Card,CVV,Billing_Address,Contract_Number,Saved_Card_No)
VALUES
(1005,'4233908110921001',TO_DATE('2018/07/15', 'yyyy/mm/dd'),'James Smith','198','12 Highland Street,Jersey City ,NJ','5677',NULL)
SELECT * FROM dual;





