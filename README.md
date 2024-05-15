# Varied_Product_insurance
# Insurance Management System

This is a database system for managing an insurance company's operations, including agents, customers, policies, claims, and payments. The system is implemented using Oracle SQL and PL/SQL.

## Table Structure

The following tables are included in the database:

1. **ADDRESS**: Stores the address details of agents.
2. **AGENT**: Stores information about the company's agents, including their name, Social Security number (SSN), salary, commission, and the number of policies they have handled.
3. **CUSTOMER**: Stores customer information, such as SSN, name, date of birth, income, policy number, phone number, agent ID, purchase date, and claim number.
4. **AGNT_PASSWORD**: Stores the passwords for agents.
5. **CUST_PASSWORD**: Stores the passwords for customers.
6. **POLICY**: Stores details about different types of policies offered by the company, including policy ID, name, type, term price, term period, and coverage.
7. **PAYMENT**: Stores payment records, including payment number, customer SSN, payment date, amount, and policy number.
8. **CLAIM**: Stores claim information, such as claim ID, policy number, claim date, sanction date, sanction amount, check number, and reason.
9. **CUST_POLICY**: Stores information about the policies held by customers, including policy number, policy ID, type, registration number, valuation, and sum assured.

## Features

The system includes the following features:

1. Inserting data into the tables using PL/SQL procedures.
2. Retrieving information from the database using SQL queries.
3. Implementing PL/SQL procedures for various operations, such as:
   - Calculating the total income of all customers.
   - Finding the agent with the highest commission.
   - Finding the customer with the most policies.
   - Calculating the average coverage of all policies.
   - Retrieving customer information using cursors.
   - Implementing triggers to handle specific events (e.g., inserting high-income customers into a separate table).
   - Creating functions to retrieve specific information (e.g., agent names in Florida, customers with active policies, customers who have claimed a policy).

