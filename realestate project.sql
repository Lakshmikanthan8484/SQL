create database project
use project

create table property(property_id int primary key,tittle varchar(50),location varchar(50),price Decimal,land_status varchar(50))

create table client(client_id int primary key,client_name varchar(50),client_phone varchar(30) ,client_email varchar(50),client_addres varchar(100),client_type varchar(50),property_id int,
FOREIGN KEY (property_id) REFERENCES property(property_id))

create table agent(agent_id int primary key,agent_name varchar(50),agent_phone varchar(30),agent_email varchar(50),comission_rate int,client_id int,
FOREIGN KEY (client_id) REFERENCES client(client_id))

create table transaction(transaction_id int primary key,transaction_date date,transaction_status varchar(50),agent_id int,
FOREIGN KEY (agent_id) REFERENCES agent(agent_id))

create table appointment(appointment_id int primary key,appointment_date date,appointment_time Time,transaction_id int,
FOREIGN KEY (transaction_id) REFERENCES transaction(transaction_id))

create table payment(payment_id int primary key,payment_date date,amount int,payment_method varchar(50),appointment_id int,
FOREIGN KEY(appointment_id) REFERENCES appointment(appointment_id))

INSERT INTO property VALUES
(1, 'Villa Paradise', 'Chennai', 8500000, 'Available'),
(2, 'Sea Breeze Apartment', 'Mumbai', 6500000, 'Sold'),
(3, 'Green Acres Plot', 'Coimbatore', 1200000, 'Available'),
(4, 'Sunset Villa', 'Goa', 9500000, 'Available'),
(5, 'Metro Heights Flat', 'Bangalore', 7800000, 'Available'),
(6, 'Hilltop House', 'Ooty', 5600000, 'Sold'),
(7, 'Royal Residency', 'Hyderabad', 8400000, 'Available'),
(8, 'Palm Grove Villa', 'Chennai', 9200000, 'Available'),
(9, 'Lakeside Cottage', 'Kodaikanal', 4500000, 'Sold'),
(10, 'Urban Nest Apartment', 'Delhi', 7300000, 'Available'),
(11, 'Beachfront Bungalow', 'Pondicherry', 9800000, 'Available'),
(12, 'Silver Oaks Villa', 'Chennai', 8100000, 'Available'),
(13, 'Sunrise Apartments', 'Bangalore', 7000000, 'Available'),
(14, 'Hill Crest Mansion', 'Ooty', 10500000, 'Sold'),
(15, 'Ocean View Flat', 'Mumbai', 8200000, 'Available'),
(16, 'Golden Meadows Plot', 'Coimbatore', 1500000, 'Available'),
(17, 'Skyline Residency', 'Hyderabad', 8600000, 'Available'),
(18, 'Green Leaf Cottage', 'Kodaikanal', 4300000, 'Sold'),
(19, 'City Lights Flat', 'Delhi', 7800000, 'Available'),
(20, 'Blue Horizon Villa', 'Goa', 9400000, 'Available')

INSERT INTO client VALUES
(1,'Arun Kumar','9876543210','arun@gmail.com','12 Main St, Coimbatore','Buyer',1),
(2,'Meena R','9876501234','meena@gmail.com','45 Market Rd, Chennai','Seller',2),
(3,'Vijay S','9789123456','vijay@gmail.com','23 Lake Rd, Madurai','Buyer',3),
(4,'Kavitha L','8976543210','kavitha@gmail.com','78 Palm St, Trichy','Buyer',4),
(5,'Ramesh P','9123456789','ramesh@gmail.com','Hill View, Ooty','Seller',5),
(6,'Priya M','9567891230','priya@gmail.com','21 River Rd, Coimbatore','Buyer',6),
(7,'Suresh K','9873214560','suresh@gmail.com','City Center, Chennai','Buyer',7),
(8,'Lakshmi N','9876547890','lakshmi@gmail.com','Golden Homes, Erode','Seller',8),
(9,'Anand B','9001234567','anand@gmail.com','45 Skyline Rd, Coimbatore','Buyer',9),
(10,'Divya S','9801234567','divya@gmail.com','Orchid Residency, Salem','Buyer',10),
(11,'Manoj P','9654321789','manoj@gmail.com','Seaside, Pondicherry','Buyer',11),
(12,'Geetha R','9765432109','geetha@gmail.com','Silver Springs, Coimbatore','Seller',12),
(13,'Naveen T','9009876543','naveen@gmail.com','Lakeview, Madurai','Buyer',13),
(14,'Revathi P','9345678901','revathi@gmail.com','Pearl Residency, Coimbatore','Buyer',14),
(15,'Saravanan J','9234567890','saravanan@gmail.com','Sunshine Villa, Chennai','Seller',15),
(16,'Vidya M','9345678123','vidya@gmail.com','Royal Enclave, Erode','Buyer',16),
(17,'Aravind R','9678123456','aravind@gmail.com','Palm Grove, Coimbatore','Buyer',17),
(18,'Deepa K','9234789012','deepa@gmail.com','Highland Residency, Ooty','Seller',18),
(19,'Hari Prasad','9543217890','hari@gmail.com','Emerald Heights, Chennai','Buyer',19),
(20,'Swathi S','9345678098','swathi@gmail.com','Lotus Residency, Salem','Buyer',20)


INSERT INTO agent VALUES
(1,'Karthik','9876512340','karthik@agency.com',2,1),
(2,'Sathya','9765412309','sathya@agency.com',3,2),
(3,'Mani','9654321098','mani@agency.com',5,3),
(4,'Vimal','9543210987','vimal@agency.com',4,4),
(5,'Ravi','9432109876','ravi@agency.com',6,5),
(6,'Rohit','9321098765','rohit@agency.com',3,6),
(7,'Vinoth','9210987654','vinoth@agency.com',4,7),
(8,'Ajay','9109876543','ajay@agency.com',6,8),
(9,'Kiran','9098765432','kiran@agency.com',5,9),
(10,'Sanjay','9987654321','sanjay@agency.com',4,10),
 (11,'Dinesh','9877654321','dinesh@agency.com',3,11),
(12,'Balaji','9766543210','balaji@agency.com',5,12),
(13,'Sundar','9655432109','sundar@agency.com',2,13),
(14,'Nithin','9544321098','nithin@agency.com',4,14),
(15,'Varun','9433210987','varun@agency.com',3,15),
(16,'Pradeep','9322210987','pradeep@agency.com',5,16),
(17,'Yogesh','9211210987','yogesh@agency.com',2,17),
(18,'Gokul','9102210987','gokul@agency.com',4,18),
(19,'Shiva','9099210987','shiva@agency.com',6,19),
(20,'Ragul','9988210987','ragul@agency.com',5,20);


INSERT INTO transaction VALUES
(1,'2025-01-12','Completed',1),
(2,'2025-01-15','Pending',2),
(3,'2025-02-01','Completed',3),
(4,'2025-02-04','Pending',4),
(5,'2025-02-10','Completed',5),
(6,'2025-02-15','Completed',6),
(7,'2025-03-01','Pending',7),
(8,'2025-03-05','Completed',8),
(9,'2025-03-10','Completed',9),
(10,'2025-03-12','Pending',10),
(11,'2025-03-14','Completed',11),
(12,'2025-03-16','Pending',12),
(13,'2025-03-18','Completed',13),
(14,'2025-03-20','Completed',14),
(15,'2025-03-22','Pending',15),
(16,'2025-03-24','Completed',16),
(17,'2025-03-26','Pending',17),
(18,'2025-03-28','Completed',18),
(19,'2025-03-30','Pending',19),
(20,'2025-04-01','Completed',20);

INSERT INTO appointment VALUES
(1,'2025-01-10','10:00:00',1),
(2,'2025-01-14','14:30:00',2),
(3,'2025-01-30','09:15:00',3),
(4,'2025-02-02','11:45:00',4),
(5,'2025-02-08','15:00:00',5),
(6,'2025-02-14','16:20:00',6),
(7,'2025-02-28','13:10:00',7),
(8,'2025-03-04','10:40:00',8),
(9,'2025-03-08','12:30:00',9),
(10,'2025-03-11','17:25:00',10),
(11,'2025-03-13','08:45:00',11),
(12,'2025-03-15','14:00:00',12),
(13,'2025-03-17','10:15:00',13),
(14,'2025-03-19','11:50:00',14),
(15,'2025-03-21','09:30:00',15),
(16,'2025-03-23','15:40:00',16),
(17,'2025-03-25','16:10:00',17),
(18,'2025-03-27','14:50:00',18),
(19,'2025-03-29','10:35:00',19),
(20,'2025-03-31','13:20:00',20);


INSERT INTO payment VALUES
(1,'2025-01-12',5500000,'Online',1),
(2,'2025-01-15',3200000,'Cash',2),
(3,'2025-02-01',7500000,'Cheque',3),
(4,'2025-02-04',4800000,'Online',4),
(5,'2025-02-10',9200000,'Cash',5),
(6,'2025-02-15',8600000,'Online',6),
(7,'2025-03-01',4300000,'Cheque',7),
(8,'2025-03-05',3900000,'Online',8),
(9,'2025-03-10',6500000,'Cash',9),
(10,'2025-03-12',4700000,'Online',10),
(11,'2025-03-14',8800000,'Cheque',11),
(12,'2025-03-16',5400000,'Online',12),
(13,'2025-03-18',3600000,'Cash',13),
(14,'2025-03-20',4100000,'Online',14),
(15,'2025-03-22',7800000,'Cheque',15),
(16,'2025-03-24',5200000,'Cash',16),
(17,'2025-03-26',6000000,'Online',17),
(18,'2025-03-28',9900000,'Cash',18),
(19,'2025-03-30',8700000,'Cheque',19),
(20,'2025-04-01',4500000,'Online',20);

select* from property

select tittle,price
from property

select * from client where client_email like 's%'

select *from agent where comission_rate > 5

select * from transaction where transaction_status ='completed'

select  c.client_id, c.client_name,c.client_phone ,p.tittle,p.location,p.price
from client as c
join property as p on c.property_id=p.property_id

select a.agent_id,a.agent_name,c.client_id,c.client_name,c.client_phone
from agent as a
join client as c on a.client_id=c.client_id

select t.transaction_id,t.transaction_date,t.transaction_status,a.agent_name,c.client_name
from transaction as t
join agent as a on t.agent_id=a.agent_id
join client as c on a.client_id=c.client_id

select a.appointment_id,a.appointment_date,a.appointment_time,t.transaction_status
from appointment as a
join transaction as t on a.transaction_id=t.transaction_id

select property_id,tittle,location,price,land_status
from property
where location = 'Chennai'
  and  land_status = 'Available'
  
select client_name 
from client
where client_type='Buyer'

select appointment_id,appointment_date,appointment_time
from appointment
where appointment_date > '2025-02-01'

select payment_id,amount,payment_method
from payment
where amount >7600000

select count(*) as total_properties
from property

select payment_method,
sum(amount) as total_amount
from payment
group by payment_method

select a.agent_id,a.agent_name,
count(t.transaction_id) as total_transactions
from agent as a 
join transaction as t on a.agent_id=t.agent_id
group by a.agent_id,a.agent_name

select property_id,tittle,location,price,land_status
from property
where land_status='Available'
order by price desc
limit 2












