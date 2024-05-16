create table Payment
(
	Payment_no int primary key,
	Ssn char(10),
	Payment_data date,
	Amount decimal(8,2),
	Policy_num int
);
insert into payment values(1,1000000031,to_date('2016-09-08', 'YYYY-MM-DD'),12589,1);
insert into payment values(2,1000000032,to_date('2016-08-25', 'YYYY-MM-DD'),8454,2);
insert into payment values(3,1000000033,to_date('2016-12-18', 'YYYY-MM-DD'),8998,3);
insert into payment values(4,1000000034,to_date('2016-03-01', 'YYYY-MM-DD'),6707,4);
insert into payment values(5,1000000035,to_date('2016-12-22', 'YYYY-MM-DD'),14123,5);
insert into payment values(6,1000000036,to_date('2016-03-04', 'YYYY-MM-DD'),7050,6);
insert into payment values(7,1000000037,to_date('2016-09-20', 'YYYY-MM-DD'),12509,7);
insert into payment values(8,1000000038,to_date('2016-11-08', 'YYYY-MM-DD'),14778,8);
insert into payment values(9,1000000039,to_date('2016-05-19', 'YYYY-MM-DD'),5246,9);
insert into payment values(10,1000000040,to_date('2016-06-23', 'YYYY-MM-DD'),5253,10);
insert into payment values(11,1000000041,to_date('2016-12-06', 'YYYY-MM-DD'),13728,11);
insert into payment values(12,1000000042,to_date('2016-07-28', 'YYYY-MM-DD'),13118,12);
insert into payment values(13,1000000043,to_date('2016-07-05', 'YYYY-MM-DD'),13241,13);
insert into payment values(14,1000000044,to_date('2016-11-22', 'YYYY-MM-DD'),7614,14);
insert into payment values(15,1000000045,to_date('2016-01-31', 'YYYY-MM-DD'),9923,15);
insert into payment values(16,1000000046,to_date('2016-08-07', 'YYYY-MM-DD'),11678,16);
insert into payment values(17,1000000047,to_date('2016-01-14', 'YYYY-MM-DD'),13419,17);
insert into payment values(18,1000000048,to_date('2016-05-20', 'YYYY-MM-DD'),6482,18);
insert into payment values(19,1000000049,to_date('2016-03-01', 'YYYY-MM-DD'),11443,19);
insert into payment values(20,1000000050,to_date('2016-04-08', 'YYYY-MM-DD'),11972,20);
insert into payment values(21,1000000051,to_date('2016-09-10', 'YYYY-MM-DD'),5413,21);
insert into payment values(22,1000000052,to_date('2016-11-05', 'YYYY-MM-DD'),6453,22);
insert into payment values(23,1000000053,to_date('2016-02-29', 'YYYY-MM-DD'),10491,23);
insert into payment values(24,1000000054,to_date('2016-08-02', 'YYYY-MM-DD'),11189,24);
insert into payment values(25,1000000055,to_date('2016-04-10', 'YYYY-MM-DD'),11630,25);
insert into payment values(26,1000000056,to_date('2016-11-18', 'YYYY-MM-DD'),11558,26);
insert into payment values(27,1000000057,to_date('2016-11-21', 'YYYY-MM-DD'),11166,27);
insert into payment values(28,1000000058,to_date('2016-11-16', 'YYYY-MM-DD'),12941,28);
insert into payment values(29,1000000059,to_date('2016-11-11', 'YYYY-MM-DD'),14241,29);
insert into payment values(30,1000000060,to_date('2016-04-06', 'YYYY-MM-DD'),9391,30);

select * from payment;
