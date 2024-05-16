

/*1) To select ssn first name and last name of customers who have made payments more than once*/
select customer.ssn,fname,lname,customer.policy_num from customer, payment where customer.ssn = payment.ssn and payment_no > 2;

/*2) To select name and password of the agents*/
select name, password from agent, agnt_password where agent.ssn = agnt_password.ssn;

/*3) To select names of agent who work in texas*/
select name from agent where ssn in ( select ssn from address where state='Texas');

/*4) To select maximum salary*/
select max(salary) from agent;

/*5) To select the second highest salary*/
select max(salary)from agent where salary not in (select max(salary) from agent);

/*6) To select first name and last name of the customers who have agent associated with them*/
select c.fname,c.lname from (customer as c join (agent as a))where c.agent_id = a.ssn;

/*7) To get the number of people who work in the state of Florida*/
select count(name) from agent where SSN in (select SSN from Address where state='Florida');

