/*1 CURSORS*/
DECLARE
  CURSOR c_customer IS
    SELECT * FROM CUSTOMER;
  c_customer_row CUSTOMER%ROWTYPE; -- Declare c_customer_row using the %ROWTYPE attribute
BEGIN
  OPEN c_customer;
  LOOP
    FETCH c_customer INTO c_customer_row;
    EXIT WHEN c_customer%NOTFOUND;
    -- Perform some actions with the fetched row
    DBMS_OUTPUT.PUT_LINE('Customer Name: ' || c_customer_row.Fname || ' ' || c_customer_row.Lname);
  END LOOP;
  CLOSE c_customer;
END;
/

/*2 TRIGGERS*/
CREATE OR REPLACE TRIGGER agent_default_policy_count
BEFORE INSERT ON AGENT
FOR EACH ROW
BEGIN
    IF :NEW.Num_of_policy_done IS NULL THEN
        :NEW.Num_of_policy_done := 0; -- Set default value to 0
    END IF;
END;
/
-- Insert a new agent without specifying Num_of_policy_done
INSERT INTO AGENT (Name, Ssn, Salary, Commission) VALUES ('John Doe', 1000000031, 80000, 5000);
-- Query the AGENT table to see the updated values
SELECT * FROM AGENT WHERE Ssn = 1000000031;

