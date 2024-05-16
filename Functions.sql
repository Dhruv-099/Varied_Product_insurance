/*1 To select the name and address of the agents who work in Florida*/
CREATE OR REPLACE FUNCTION agent_florida_names
RETURN VARCHAR2
IS
  agent_names VARCHAR2(500);
BEGIN
  SELECT LISTAGG(name, ', ') WITHIN GROUP (ORDER BY name) INTO agent_names
  FROM agent
  WHERE ssn IN (SELECT ssn FROM address WHERE state = 'Florida');
  
  RETURN agent_names;
END;
/-- Now let's call the function
DECLARE
  agent_list VARCHAR2(500);
BEGIN
  agent_list := agent_florida_names();
  DBMS_OUTPUT.PUT_LINE('Agents in Florida: ' || agent_list);
END;
/

/*2 To select ssn first name and last name of customers with active policies*/
CREATE OR REPLACE FUNCTION customer_active_policy
RETURN SYS_REFCURSOR
IS
  customer_policies SYS_REFCURSOR;
BEGIN
  OPEN customer_policies FOR
    SELECT c.ssn, c.fname, c.lname
    FROM customer c
    JOIN cust_policy cp ON c.policy_num = cp.policy_num;
  RETURN customer_policies;
END;
/
DECLARE
  customer_policy_cursor SYS_REFCURSOR;
  v_ssn customer.ssn%TYPE;
  v_fname customer.fname%TYPE;
  v_lname customer.lname%TYPE;
BEGIN
  customer_policy_cursor := customer_active_policy();
  LOOP
    FETCH customer_policy_cursor INTO v_ssn, v_fname, v_lname;
    EXIT WHEN customer_policy_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('SSN: ' || v_ssn || ', Name: ' || v_fname || ' ' || v_lname);
  END LOOP;
  CLOSE customer_policy_cursor;
END;
/

/*3 To select ssn first name and last name of customers who have claimed their policies */

CREATE OR REPLACE FUNCTION customer_claimed_policy
RETURN VARCHAR2
IS
  customer_names VARCHAR2(4000) := '';
BEGIN
  FOR c IN (SELECT ssn, fname, lname FROM customer WHERE ssn IN (SELECT ssn FROM claim))
  LOOP
    customer_names := customer_names || c.ssn || ' ' || c.fname || ' ' || c.lname || ', ';
  END LOOP;
  -- Remove the last comma and space
  IF LENGTH(customer_names) > 2 THEN
    customer_names := SUBSTR(customer_names, 1, LENGTH(customer_names) - 2);
  END IF;
  RETURN customer_names;
END;
/
DECLARE
  result VARCHAR2(4000); -- Increase the size to accommodate larger strings
BEGIN
  result := customer_claimed_policy();
  DBMS_OUTPUT.PUT_LINE('Customers who have claimed a policy: ' || result);
END;
/
