create table cust_policy
(
	Policy_num int primary key,
	Policy_id int,
	Type varchar(15),
	Registration_no NUMBER(15),
	Valuation decimal(12,2),
	Sum_assured decimal(12,2)
);
ALTER TABLE cust_policy MODIFY COLUMN Registration_no BIGINT;
insert into cust_policy values (1, 1, 'home', 752448054743, 8175000,0);
insert into cust_policy values (2, 2, 'personal', 425245882758, 2500000,0);
insert into cust_policy values (3, 6, 'personal', 904797817681, 500000,0);
insert into cust_policy values (4, 4, 'farmer', 117055384636, 500000,0);
insert into cust_policy values (5, 4, 'farmer', 647568011156, 347000,0);
insert into cust_policy values (6, 4, 'farmer', 901427160928, 120000,0);
insert into cust_policy values (7, 5, 'travel', 465796453800, 475000,0);
insert into cust_policy values (8, 3, 'car', 355224621405, 347000,0);
insert into cust_policy values (31, 4, 'farmer', 353188042827, 85000,0);
insert into cust_policy values (10, 4, 'farmer', 225007951682, 188000,0);
insert into cust_policy values (11, 4, 'farmer', 398537310531, 142000,0);
insert into cust_policy values (12, 4, 'farmer', 306269929682, 44461,0);
insert into cust_policy values (13, 1, 'home', 554122575857, 5721705,0);
insert into cust_policy values (14, 1, 'home', 355127906516, 4401303,0);
insert into cust_policy values (15, 4, 'farmer', 277226711134, 74049,0);
insert into cust_policy values (16, 5, 'travel', 222961787364, 1566183,0);
insert into cust_policy values (17, 4, 'farmer', 658783796475, 92459,0);
insert into cust_policy values (18, 3, 'car', 205082957473, 833228,0);
insert into cust_policy values (19, 4, 'farmer', 850347862971, 62903,0);
insert into cust_policy values (20, 6, 'personal', 645489320271, 506469,0);
insert into cust_policy values (21, 5, 'travel', 759429136143, 2018749,0);
insert into cust_policy values (22, 2, 'personal', 505396029008, 700000,0);
insert into cust_policy values (23, 5, 'travel', 824766789003, 1500000,0);
insert into cust_policy values (24, 1, 'home', 775256920591, 7500000,0);
insert into cust_policy values (25, 1, 'home', 765116884416, 8475000,0);
insert into cust_policy values (26, 5, 'travel', 176294742712, 1757000,0);
insert into cust_policy values (27, 1, 'home', 354460846922, 8400000,0);
insert into cust_policy values (28, 2, 'personal', 305687141564, 200000,0);
insert into cust_policy values (29, 6, 'personal', 271304288894, 500000,0);
insert into cust_policy values (30, 3, 'car', 697859577691, 1000000,0);

select * from cust_policy;