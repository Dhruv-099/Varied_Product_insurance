CREATE TABLE AGENT
(
	Name varchar(35), 
	Ssn CHAR(10) NOT NULL PRIMARY KEY,
	Salary decimal(12,2),
	Commission decimal(12,2),
	Num_of_policy_done int
);
CREATE OR REPLACE PROCEDURE insert_agent(
    agent_name IN VARCHAR2,
    agent_id IN NUMBER,
    sales_volume IN NUMBER,
    commission IN NUMBER,
    experience_years IN NUMBER
)
AS
BEGIN
    INSERT INTO agent VALUES (agent_name, agent_id, sales_volume, commission, experience_years);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Data inserted successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
BEGIN
 insert_agent('Obidiah Heathorn', 1000000001, 94200, 17100, 12);
 insert_agent('Ricca Artinstall', 1000000002, 119400, 11300, 9);
 insert_agent('Bernardine Tayloe',1000000003,157900,34900,9);
insert_agent('Murray Philippou',1000000004,70000,12100,17);
insert_agent('Berrie Chaudrelle',1000000005,158700,33100,14);
insert_agent('Minetta Hodjetts',1000000006,87900,7000,23);
insert_agent('Marylee Kinnach',1000000007,111800,28200,9);
insert_agent('Curtis Clausen-Thue',1000000008,131000,8800,20);
insert_agent('Peterus Derwin',1000000009,105500,14500,20);
insert_agent('Farlay Varfalameev',1000000010,178000,14000,22);
insert_agent('Harmony Ewles',1000000011,81100,34800,7);
insert_agent('Simonette Odby',1000000012,135800,20000,11);
insert_agent('Lucille Skein',1000000013,138500,27300,16);
insert_agent('Katrina Leaburn',1000000014,74700,10400,8);
insert_agent('Othilie Eggleson',1000000015,105500,23900,9);
insert_agent('Zak Fleetham',1000000017,126100,9300,7);
insert_agent('Tine Robert',1000000018,116100,27400,13);
insert_agent('Tatiania Dashwood',1000000019,120700,14600,22);
insert_agent('Kalli Mould',1000000020,114500,22500,14);
insert_agent('Stacia Egalton',1000000021,78900,12800,19);
insert_agent('Hollis Persich',1000000022,125400,16100,5);
insert_agent('Bonny Janicijevic',1000000023,106600,15400,6);
insert_agent('Kane Grcic',1000000024,99600,26500,15);
insert_agent('Etan Bernardez',1000000025,139500,31700,11);
insert_agent('Darb Spriggin',1000000026,85700,5400,5);
insert_agent('See Musso',1000000027,90100,23800,10);
insert_agent('Michelina Plank',1000000028,171300,12900,12);
insert_agent('Domenic Wooffitt',1000000029,94900,13000,7);
insert_agent('Standford Scarre',1000000030,106900,22900,14);
insert into agent values('Elyse Wells',1000000016,78700,7200,14);
    -- Call insert_agent for each set of values you want to insert
END;
/
select * from agent;