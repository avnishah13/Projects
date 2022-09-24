-- Tables --

create table airport_locn
(City VARCHAR(55) NOT NULL,
State VARCHAR(55), 
Country VARCHAR(55),
PRIMARY KEY(city));

INSERT INTO airport_locn(City, State, Country) 
VALUES ('Bombay','Maharashtra', 'India'),
('Delhi','Delhi','India'),
('Los Angeles','California','United States'),
('Bangalore','Karnataka','India'),
('Palermo','Sicily','Italy'),
('Denver','Colorado','United States'),
('Helsinki','Uusimaa','Finland'),
('Berlin','Brandenburg','Germany'),
('Rio De Janeiro','Rio de Janeiro','Brazil'),
('Moscow','Oblast','Russia'),
('Toronto','Ontario','Canada'),
('Frankfurt','Hesse','Germany'),
('Pearl City','Hawaii','United States'),
('Detroit','Michigan','United States'),
('San Francisco', 'California', 'United States'),
('Sydney','New South Wales','Australia');

CREATE TABLE airports
(Ap_name VARCHAR(255) NOT NULL,
City VARCHAR(255),
State VARCHAR(255), 
Country VARCHAR(255),
PRIMARY KEY(Ap_name),
FOREIGN KEY(City) REFERENCES airport_locn(City));

insert into airports(Ap_name, City, State, Country)
values ('Chhatrapati Shivaji Maharaj International Airport','Bombay','Maharashtra','India'),
('Indira Gandhi International Airport','Delhi','Delhi','India'),
('Los Angeles International Airport','Los Angeles','California','United States'),
('Kempegowda International Airport','Bangalore','Karnataka','India'),
('Palermo Airport','Palermo','Sicily','Italy'),
('Denver International Airport','Denver','Colorado','United States'),
('Helsinki Airport','Helsinki','Uusimaa','Finland'),
('Berlin Brandenburg Airport Willy Brandt','Berlin','Brandenburg','Germany'),
('Galeão International Airport','Rio De Janeiro','Rio de Janeiro','Brazil'),
('Sheremetyevo International Airport','Moscow','Oblast','Russia'),
('Toronto Pearson International Airport','Toronto','Ontario','Canada'),
('Frankfurt Airport','Frankfurt','Hesse','Germany'),
('Daniel K Inouye International Airport','Pearl City','Hawaii','United States'),
('Wayne County Airport','Detroit','Michigan','United States'),
('San Francisco International Airport','San Francisco', 'California', 'United States'),
('Sydney Airport','Sydney','New South Wales','Australia');

CREATE TABLE airline
(Al_id VARCHAR(25) NOT NULL,
Al_name VARCHAR(255),
Al_code VARCHAR(3),
PRIMARY KEY(Al_id));

INSERT INTO airline (Al_id, Al_name, Al_code)
VALUES('AI','Air India',685),
('LH','Lufthansa',074),
('KL','KLM',742),
('VS','Vistara',820),
('ET','Etihad Airways',791),
('BA','British Airways',007),
('QA','Qatar Airways',500),
('EM','Emirates',996),
('AF','Air France',137),
('UA','United Airlines',081),
('MA','Malaysia Airlines',736);

CREATE TABLE flights
(FLIGHT_CODE VARCHAR(20) NOT NULL,
source VARCHAR(3),
destination VARCHAR(3),
arrival varchar(20),
departure VARCHAR(20),
flight_status VARCHAR(20),
duration VARCHAR(50),
flight_type VARCHAR(20),
layover_time VARCHAR(50),
no_of_stops INT,
al_id VARCHAR(5),
PRIMARY KEY(FLIGHT_CODE),
FOREIGN KEY(Al_id) REFERENCES airline(Al_id));

INSERT INTO FLIGHTS(FLIGHT_CODE, SOURCE, DESTINATION, DEPARTURE, ARRIVAL, FLIGHT_STATUS, DURATION, FLIGHT_TYPE, LAYOVER_TIME, NO_OF_STOPS, AL_ID)
values ('EM2736','BOM','LAX','09:10','07:25','On-time','23hrs','Non-Stop',0,0,'EM'),
('BA2305','LAX','BOM','17:00','05:30','Delayed','30hrs','Connecting',4,1,'BA'),
('AI5678','DEL','BOM','19:20','21:35','On-time','3hrs','Non-Stop',0,0,'AI'),
('VS9876','BOM','BAN','05:50','07:30','On-time','2hrs','Non-stop',0,0,'VS'),
('BA1689','BOM','PAL','15:20','11:15','On-time','20hrs','Connecting',7,3,'BA'),
('QA4367','DEN','BOM','04:00','13:25','On-time','31hrs','Connecting',5,2,'QA'),
('LH1902','BOM','HEL','12:00','12:50','Delayed','18hrs','Non-stop',0,0,'LH'),
('KL3056','BOM','BER','02:15','14:45','On-time','13hrs','Non-Stop',0,0,'KL'),
('AF3456','BOM','RIO','02:50','04:10','On-time','50hrs','Non-stop',23,2,'AF'),
('KL2334','MOS','BOM','06:25','00:10','On-time','18hrs','Direct',0,0,'KL'),
('AI6648','BOM','SAN','07:00','20:30','On-time','37hrs','Connecting',16,2,'AI'),
('VS8974','SAN','BOM','13:25','16:30','Delayed','23hrs','Direct',0,0,'KL'),
('MA1005','BOM','SYD','17:05','09:00','On-time','40hrs','Connecting',26,1,'MA');

CREATE TABLE passengers
(PASSPORTNO VARCHAR(10) NOT NULL,
PID INT NOT NULL,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
ADDRESS varchar(100),
PHONE FLOAT8,
AGE INT,
SEX VARCHAR(1),
PRIMARY KEY(PID,PASSPORTNO));

INSERT INTO passengers(PASSPORTNO,PID,First_Name,Last_name,ADDRESS,PHONE,AGE,SEX) 
VALUES('A6812598',1,'Harsh','Sharma','2/18, Rose Mansion, Vaju Kotak Marg, Fort, Mum',9822050527,50,'M'), 
('K8515251',2,'Anamika','Mohite','2104, D B Gupta Road, Karol Bagh, Delhi',8546620222,20,'F'),
('C5261562',3,'Arham','Khan','15th Floor, Express Tower, Nariman Point, Mum',7021384112,31,'M'),
('V6124612',4,'Xavier','D\'Angelo','246 E Colden Ave. LA',2522039534,43,'M'),
('X9324666',5,'Mallory','Davis','1871 W 57th St. LA',6032864104,19,'F'),
('D2225641',6,'Adil','Shaikh','2/112, Shanti Sadan, Sion, Mum',7666205620,18,'M'),
('K6542033',7,'Ahmed','Mirza','541, Noor Mahal, Dr B.a Road, Matunga, Mumbai',9044643200,27,'M'),
('K6411371',8,'Arshiya','Lakhani','11, Dossa House, Gunbow Street, Fort, Mumbai',9954335126,39,'F'),
('D6312102',9,'Karan','Rawal','1158 PAGE ST , SAN FRANCISCO',6516216715,22,'M'),
('R0226411',10,'Kanishka','Solanki','7720 McCallum Boulevard, Apt 2087, Dallas, Texas',7652552400,69,'F'),
('E3277889',11,'Bill','Smith','1234 Baker Apartments, Apt 59, Hesse, Germany',3014306177,9,'M'),
('B3345132',12,'Sara','Thomas','11-c, Girikunj, N S Patkar Road, Grant Road, Mum',9216569226,16,'F'),
('C3154231',13,'Monica','Sanghvi','548 Market Place, San Francisco, CA',9944567800,10,'F'),
('D3112121',14,'Bhagyesh','Gupta','1/398, Punja Sharif, Kashmere Gate, Delhi',9862469986,43,'M'),
('Y4520340',15,'Riya','Pradhan','3355 Palencia, Apartment 2065, Mumbai',974512343,4,'F');

CREATE TABLE bookings
(PID INT NOT NULL,
FLIGHT_CODE VARCHAR(10),
PRIMARY KEY(PID),
FOREIGN KEY(FLIGHT_CODE) REFERENCES FLIGHTS(FLIGHT_CODE));

INSERT INTO BOOKINGS(PID, FLIGHT_CODE) 
VALUES(1,'VS9876'),
(2,'AI5678'),
(3,'AI6648'),
(4,'BA2305'),
(5,'EM2736'),
(6,'BA1689'),
(7,'MA1005'),
(8,'AF3456'),
(9,'VS8974'),
(10,'QA4367'),
(11,'KL2334'),
(12,'LH1902'),
(13,'VS8974'),
(14,'AI5678'),
(15,'LH1902');

CREATE TABLE EMPLOYEES
(EMP_ID INT NOT NULL,
FIRST_NAME VARCHAR(20),
LAST_NAME VARCHAR(20),
ADDRESS VARCHAR(100),
PHONE FLOAT8,
AGE INT,
SEX VARCHAR(1),
POSITION VARCHAR(30),
PRIMARY KEY(EMP_ID));

INSERT INTO EMPLOYEES(EMP_ID, FIRST_NAME, LAST_NAME, ADDRESS, PHONE, AGE, SEX, POSITION)
VALUES(025,'Rehman','Ali','Love Lane, Byculla, Mumbai',9594816650, 35, 'M','Receptionist'),
(081,'Talika', 'Loke', 'Linking road, Khar, Mumbai', 9662536236, 48,'F','Traffic Monitor'),
(172, 'Ayush', 'Naidu', 'M.G. Road, Goregaov, Mumbai', 9868623253, 32, 'M', 'Traffic Monitor'),
(951, 'Falah', 'Riaz', 'Lbs Road, Mulund, Mumbai', 9759632363, 38, 'F', 'Air Hostess'),
(103, 'Aqsa', 'Mahmood','Jawahar Nagar, Goregoav, Mumbai', 93232636363, 42, 'F', 'Traffic Monitor'),
(375,'Mihika','Mirchandani','Nagdevi street, Mumbadevi, Mumbai', 9859696963, 32, 'F', 'Manager'),
(198,'Brandon','Meyers','Fort, Mumbai', 97596312536, 26, 'M', 'Pilot'),
(736,'Pratik','Surve','Dariyasthan Street, Vadgadi, Mumbai', 9323256525, 28,'M', 'Aeronautical Engineer'),
(777, 'Angela','Davis', 'Devidayal lane, Mazgoan, Mumbai', 92623632536, 44, 'F', 'Airfield Operations Specialist'),
(411,'Imtiyaz','Nizami','Underia Street, Nagpada, Mumbai', 91225363636, 28, 'M', 'Aeronautical Engineer'),
(014,'Rio','Richards' , 'Clare road, Nagpada, Mumbai', 98262425256, 36, 'M', 'Aircraft Mechanic'),
(600,'Taher','Qureshi', 'Gal Dard Road, Nariman Point, Mumbai', 9428145685, 22, 'M', 'Pilot'),
(254,'Sakshi','Gandhi', 'East road, Churchgate, Mumbai', 97696582152, 30, 'F', 'Receptionist');

CREATE TABLE EMPLOYEE_SALARY
(POSITION VARCHAR(30) NOT NULL,
SALARY INT,
PRIMARY KEY(POSITION));

INSERT INTO EMPLOYEE_SALARY(POSITION, SALARY)
VALUES('Receptionist', 50000),
('Manager', 60000),
('Aeronautical Engineer', 70000),
('Airfield Operations Specialist', 70000),
('Aircraft Mechanic', 70000),
('Traffic Monitor',80000),
('Air Hostess', 80000),
('Airport Authority',90000),
('Pilot', 90000);

CREATE TABLE TICKETS
(TICKET_NUMBER FLOAT(13) NOT NULL,
SOURCE VARCHAR(3),
DESTINATION VARCHAR(3),
DATE_OF_BOOKING VARCHAR(30),
DATE_OF_TRAVEL VARCHAR(30),
SEATNO VARCHAR(5),
CLASS VARCHAR(15),
DATE_OF_CANCELLATION VARCHAR(30),
PID INT,
PASSPORTNO VARCHAR(10),
PRICE INT NOT NULL,
SERVED_BY_EMP INT NOT NULL,
primary key(ticket_number),
FOREIGN KEY(PID, PASSPORTNO) REFERENCES PASSENGERS(PID, PASSPORTNO),
FOREIGN KEY(SERVED_BY_EMP) REFERENCES EMPLOYEES(EMP_ID));

INSERT INTO TICKETS(TICKET_NUMBER, SOURCE, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS, PID, PASSPORTNO, PRICE, SERVED_BY_EMP)
VALUES(0011234111122,'BOM','BAN','21-Jan-21','','25-Feb-21','32A','Economy', 1, 'A6812598', 3400, 025),
(0939859111229,'DEL','BOM','23-January-21','23-January-21','27-January-21','63E','Economy', 2, 'K8515251', 4700, 025),
(0564621214859,'BOM','SAN','23-January-21','','01-March-21','01B','First-Class', 3, 'C5261562', 44300, 375),
(6982264163232,'LAX','BOM','26-January-21','','01-May-21','15A','Economy', 4, 'V6124612', 40700, 025),
(4612000564611,'BOM','LAX','01-February-21','27-February-21','06-March-21','22C','Business', 5, 'X9324666', 48500, 254),
(9546545212000,'BOM','PAL','11-February-21','','21-February-21','42A','Economy', 6, 'D2225641', 42000, 025),
(4854505450450,'BOM','SYD','12-February-21','','14-February-21','17D','Economy', 7, 'K6542033', 97400, 375),
(0461551661646,'BOM','RIO','01-March-21','','05-March-21','26E','Economy', 8, 'K6411371', 93200, 025),
(6106464041200,'SAN','BOM','02-March-21','','13-April-21','57A','Economy', 9, 'D6312102', 51000, 254),
(0546121155120,'DEN','BOM','10-March-21','','30-March-21','10D','Business', 10, 'R0226411', 64700, 375),
(9512165661122,'MOS','BOM','14-March-21','','30-March-21','11C','Economy', 11, 'E3277889', 38500, 254),
(7521215521313,'BOM','HEL','30-March-21','','14-April-21','08E','Economy', 12, 'B3345132', 38300, 254),
(8521215462121,'SAN','BOM','05-April-21','','11-April-21','17C','Business', 13, 'C3154231', 52300, 025),
(4644612115656,'DEL','BOM','05-April-21','','12-May-21','51C','Economy', 14, 'D3112121', 3700, 025),
(7121697101462,'BOM','HEL','09-April-21','11-April-2021','01-May-21','13B','Economy', 15, 'Y4520340', 35000, 375);

create table refunds
(ticket_number float(13) not null,
refund_amount float8,
primary key(ticket_number),
foreign key(ticket_number) references tickets(ticket_number));

-- Queries --

select employees.first_name, employees.last_name, employees.position 
from employees 
join employee_salary on employees.POSITION = employee_salary.position 
where employee_salary.salary > 80000;

SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS NAME
FROM EMPLOYEES
UNION
SELECT CONCAT(FIRST_NAME , ' ' , LAST_NAME) AS NAME
FROM PASSENGERS;

SELECT FIRST_NAME , LAST_NAME , PID
FROM Passengers
WHERE PID IN(SELECT PID FROM TICKETS
             WHERE CLASS = 'Economy');
             
SELECT *
FROM airports
WHERE Country IN ('India' , 'United states' , 'Germany')
AND Ap_name LIKE 'F%';

-- Triggers -- 

CREATE TABLE employee_audit(
message varchar(100));


DELIMITER $$

CREATE TRIGGER my_trigger
BEFORE INSERT
ON EMPLOYEES FOR EACH ROW
BEGIN
    INSERT INTO employee_audit(message) VALUES('Added new employee');
    END $$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER my_trigger1 
BEFORE INSERT
ON EMPLOYEES FOR EACH ROW
BEGIN
    IF NEW.Sex = 'M' THEN
        INSERT INTO employee_audit VALUES('added male employee');
    ELSEIF NEW.Sex = 'F' THEN
        INSERT INTO employee_audit VALUES('added female employee');
    ELSE
        INSERT INTO employee_audit VALUES('added other employee');
    END IF;
END$$
DELIMITER ;

INSERT INTO EMPLOYEES(EMP_ID, FIRST_NAME, LAST_NAME, ADDRESS, PHONE, AGE, SEX, POSITION)
VALUES(952, 'Harshika', 'Rane', 'Satara, Maharashtra', 9825621458, 22, 'F', 'Air Hostess');

select * from employee_audit;


delimiter $$
CREATE TRIGGER CANCELLED_FLIGHTS
after UPDATE ON TICKETS
FOR EACH ROW
BEGIN
	IF OLD.DATE_OF_CANCELLATION <> NEW.DATE_OF_CANCELLATION then
       insert into refunds(ticket_number, refund_Amount) select ticket_number, price*0.50 from tickets where date_of_cancellation <> '';
	end if;
end$$
delimiter ;

update tickets set tickets.date_of_cancellation = '23-Feb-21' where passportno = 'A6812598';

select * from refunds;

-- Views --

CREATE VIEW `Delayedflights` AS
SELECT Flights.FLIGHT_CODE , Flights.FLIGHT_STATUS , Passengers.PID , Passengers.FIRST_NAME , Passengers.LAST_NAME
FROM FLIGHTS JOIN Passengers
WHERE flights.FLIGHT_STATUS = 'Delayed';


SELECT * FROM `Delayedflights`;

-- Stored Procedures --

delimiter $$

create procedure getcustomers()
	begin
		select passengers.first_name, passengers.last_name 
        from passengers join tickets on passengers.pid = tickets.pid
        where tickets.price > 80000;
	end$$
delimiter ;

call getcustomers()
