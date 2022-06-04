CREATE TABLE RENTAL_LOCATION (
                Location_ID INT PRIMARY KEY,
                Phone CHAR(10) NOT NULL,
                Email VARCHAR(25),
                Street_Name VARCHAR(40) NOT NULL,
                State CHAR(2) NOT NULL,
                City VARCHAR(15) NOT NULL );

CREATE TABLE CAR_CLASS (
                Car_Class VARCHAR(15) PRIMARY KEY,
                Daily_rate NUMBER(8,2) NOT NULL,
                Weekly_rate NUMBER(8,2) NOT NULL );

CREATE TABLE CUSTOMER (
                License_Number VARCHAR(15) PRIMARY KEY,
                License_State CHAR(2) NOT NULL,
                Fname VARCHAR(15) NOT NULL,
                Mname VARCHAR(1),
                Lname VARCHAR(15) NOT NULL,
                Address VARCHAR(100) NOT NULL,
                Phone CHAR(10) NOT NULL,
                DOB DATE NOT NULL );

CREATE TABLE CARD (
               Name_On_Card VARCHAR(50) NOT NULL,
               Card_Number CHAR(16) NOT NULL,
               Expiry_Date DATE NOT NULL,
               CVV CHAR(3) NOT NULL,
               Billing_Address VARCHAR(50) NOT NULL,
               PRIMARY KEY(Card_No) );

CREATE TABLE CAR_MODEL ( 
               Model_Name VARCHAR (15) PRIMARY KEY,
               Make VARCHAR (15),
               Year INTEGER );

CREATE TABLE CAR (
               VIN CHAR(17) PRIMARY KEY,
               Location_ID INT NOT NULL,
               Status VARCHAR(15) NOT NULL,
               Car_Class VARCHAR(15) NOT NULL,
               Model_Name VARCHAR(15),
               CONSTRAINT CARVINMODELFK
               FOREIGN KEY (Model_Name) REFERENCES CAR_CLASS(Model_Name)
               ON DELETE CASCADE,
               CONSTRAINT CARVINCLASSFK
               FOREIGN KEY (Car_Class) REFERENCES CAR_CLASS(Car_Class)
               ON DELETE CASCADE,
               CONSTRAINT CARVINRENTALFK
               FOREIGN KEY (Location_ID) REFERENCES RENTAL_LOCATION(Location_ID)
               ON DELETE CASCADE );

CREATE TABLE RESERVATION (
               Reservation_ID INT PRIMARY KEY,
               Date_in DATE NOT NULL,
               Date_out DATE NOT NULL,
               Location_ID INT,
               Car_Class VARCHAR(15),
               License_Number VARCHAR(15),
               CONSTRAINT RSERVLOCATIONFK
                 FOREIGN KEY (Location_ID) REFERENCES RENTAL_LOCATION(Location_ID)
                 ON DELETE CASCADE,
                 CONSTRAINT RESLICENSEFK
                 FOREIGN KEY (License_Number) REFERENCES CUSTOMER (License_Number)
                 ON DELETE CASCADE,
                 CONSTRAINT CLASSRESERVATIONFK
                 FOREIGN KEY (Car_Class) REFERENCES CAR_CLASS(Car_Class)
                 ON DELETE CASCADE );

CREATE TABLE RENTAL_AGREEMENT (
                 Contract_Number INT PRIMARY KEY,
                 Current_Date DATE NOT NULL,
                 Actual_End_Date DATE NOT NULL,
                 Odometer_Start INT NOT NULL,
                 Odometer_End INT,
                 Actual_Cost NUMBER(8,2) NOT NULL,
                 Reservation_ID INT,
                 VIN CHAR(17),
                 CONSTRAINT RESERVATIONFK
                 FOREIGN KEY (Reservation_ID) REFERENCES RESERVATION(Reservation_ID)
                   ON DELETE CASCADE,
                   CONSTRAINT VINRESERVATIONFK
                   FOREIGN KEY (VIN) REFERENCES CAR(VIN)
                   ON DELETE CASCADE );

CREATE TABLE PAYMENT (
                Payment_ID INT PRIMARY KEY,
                Card_No CHAR(16),
                Expiry_Date DATE,
                Name_On_Card VARCHAR(50),
                CVV CHAR(3),
                Billing_Address VARCHAR(50),
                Saved_Card_No CHAR(16),
                Contract_Number INT 
                CONSTRAINT AGREEMENTFK
                FOREIGN KEY (Contract_Number) REFERENCES RENTAL_AGREEMENT(Contract_Number)
                    ON DELETE CASCADE,
                    CONSTRAINT PAYMENTLOGINFK
                    FOREIGN KEY (Saved_Card_No) REFERENCES CARD_DETAILS(Card_No)
                    ON DELETE CASCADE );
