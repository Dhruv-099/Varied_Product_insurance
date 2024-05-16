create table POLICY
(
	Policy_id int primary key,
	Name varchar(25),
	Type varchar(10),
	Term_price decimal(9,2),
	Term_period int,
	Coverage decimal(12,2)
);
ALTER TABLE policy MODIFY  (Term_price decimal(12,2));
insert into policy values(1,'home_pol','home',1000000.00,1,100000000.00);
insert into policy values(2,'health_ins','personal',100000.00,3,1000000.00);
insert into policy values(3,'car_pol','car',10000000,1,10000000.00);
insert into policy values(4,'crop_ins','farmer',500000.00,1,10000000.00);
insert into policy values(5,'trvl_ins','travel',500000.00,1,10000000.00);
insert into policy values(6,'life_ins','personal',1000000.00,60,10000000.00);
select * from policy;