create table Claim
(
	Claim_id int primary key,
	Policy_num int,
	Claim_date date,
	Sanc_date date,
	Sanc_amount decimal(7,2),
	Cheaque_no int,
	Reason varchar(255)
);
-- Insert into claim table with adjusted date formats
DECLARE
BEGIN
    INSERT INTO claim VALUES (1, 1, TO_DATE('2017-09-01', 'YYYY-MM-DD'), TO_DATE('2017-09-16', 'YYYY-MM-DD'), 50000, 1234, 'Car accident');
    INSERT INTO claim VALUES (2, 3, TO_DATE('2017-07-01', 'YYYY-MM-DD'), TO_DATE('2017-07-16', 'YYYY-MM-DD'), 50000, 1235, 'Car accident');
    INSERT INTO claim VALUES (3, 2, TO_DATE('2017-08-01', 'YYYY-MM-DD'), TO_DATE('2017-08-16', 'YYYY-MM-DD'), 50000, 1239, 'Car accident');
    INSERT INTO claim VALUES (4, 4, TO_DATE('2017-01-01', 'YYYY-MM-DD'), TO_DATE('2017-01-16', 'YYYY-MM-DD'), 50000, 1236, 'Car accident');
    COMMIT;
END;

select * from claim;
