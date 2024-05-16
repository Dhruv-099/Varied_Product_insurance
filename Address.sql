create table ADDRESS
(
	Ssn CHAR(10) NOT NULL PRIMARY KEY,
	City varchar(7),
	Zip Int,
	State varchar(15)
);

CREATE OR REPLACE PROCEDURE insert_address(
    ssn_in IN CHAR,
    city_in IN VARCHAR2,
    zip_in IN INT,
    state_in IN VARCHAR2
)
AS
BEGIN
    INSERT INTO ADDRESS VALUES (ssn_in, city_in, zip_in, state_in);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Data inserted successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
    ALTER TABLE ADDRESS MODIFY (City VARCHAR2(20));
ALTER TABLE ADDRESS MODIFY  (STATE VARCHAR(20));

BEGIN
 insert_address(1000000001,'Miami',33283,'Florida');
insert_address(1000000002,'Lafayette',47905,'Indiana');
insert_address(1000000003,'Dallas',75287,'Texas');
insert_address(1000000004,'New York City',10110,'New York');
insert_address(1000000005,'Tampa',33647,'Florida');
insert_address(1000000006,'Atlanta',31119,'Georgia');
insert_address(1000000007,'Boise',83727,'Idaho');
insert_address(1000000008,'Tampa',33633,'Florida');
insert_address(1000000009,'Melbourne',32941,'Florida');
insert_address(1000000010,'Dallas',75387,'Texas');
insert_address(1000000011,'Ridgely',21684,'Maryland');
insert_address(1000000012,'Phoenix',85030,'Arizona');
insert_address(1000000013,'Charlotte',28205,'North Carolina');
insert_address(1000000014,'San Francisco',94164,'California');
insert_address(1000000015,'Lansing',48930,'Michigan');
insert_address(1000000016,'Tampa',33605,'Florida');
insert_address(1000000017,'Jacksonville',32220,'Florida');
insert_address(1000000018,'Richmond',23237,'Virginia');
insert_address(1000000019,'Detroit',48211,'Michigan');
insert_address(1000000020,'San Jose',95123,'California');
insert_address(1000000021,'Austin',78732,'Texas');
insert_address(1000000022,'Washington',20525,'District of Columbia');
insert_address(1000000023,'San Francisco',94137,'California');
insert_address(1000000024,'Charlottesville',22908,'Virginia');
insert_address(1000000025,'Roanoke',24040,'Virginia');
insert_address(1000000026,'Los Angeles',90040,'California');
insert_address(1000000027,'Saint Paul',55127,'Minnesota');
insert_address(1000000028,'Kansas City',64144,'Missouri');
insert_address(1000000029,'Omaha',68117,'Nebraska');
insert_address(1000000030,'Little Rock',72222,'Arkansas');
END;
/
select * from ADDRESS;