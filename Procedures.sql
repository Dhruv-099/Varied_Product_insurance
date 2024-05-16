/*1 A procedure to calculate the total income of all customers: */ 
CREATE OR REPLACE PROCEDURE total_customer_income AS
    total_income NUMBER;
BEGIN
    SELECT SUM(Income) INTO total_income
    FROM CUSTOMER;
    
    DBMS_OUTPUT.PUT_LINE('Total income of all customers: ' || total_income);
END;
/
BEGIN
  total_customer_income();
END;
/

/*2 A procedure to find the agent with the highest commission: */
CREATE OR REPLACE PROCEDURE find_highest_commission AS
    highest_commission AGENT.Name%TYPE;
    highest_commission_value AGENT.Commission%TYPE;
BEGIN
    SELECT Name, Commission
    INTO highest_commission, highest_commission_value
    FROM AGENT
    WHERE Commission = (SELECT MAX(Commission) FROM AGENT);
    
    DBMS_OUTPUT.PUT_LINE('Agent with the highest commission: ' || highest_commission || ' - ' || highest_commission_value);
END;
/
BEGIN
  find_highest_commission();
END;
/

/*3 A procedure to find the customer with the most policies: */
CREATE OR REPLACE PROCEDURE find_most_policies AS
    most_policies VARCHAR2(100); -- Adjust the size according to your needs
BEGIN
    SELECT Fname || ' ' || Lname
    INTO most_policies
    FROM (
        SELECT Fname, Lname, COUNT(*) AS num_policies
        FROM CUSTOMER
        GROUP BY Fname, Lname
        ORDER BY COUNT(*) DESC
    )
    WHERE ROWNUM = 1;
    
    DBMS_OUTPUT.PUT_LINE('Customer with the most policies: ' || most_policies);
END;
/
BEGIN
  find_most_policies();
END;
/

/*4 A procedure to find the average coverage of all policies: */
CREATE OR REPLACE PROCEDURE average_coverage AS
    avg_coverage NUMBER; -- Declare the variable
    
BEGIN
    SELECT AVG(Coverage) INTO avg_coverage
    FROM POLICY;
    
    DBMS_OUTPUT.PUT_LINE('Average coverage of all policies: ' || avg_coverage);
END;
/
BEGIN
  average_coverage();
END;
/