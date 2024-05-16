/*Foreign Key Creation*/
/*use information_schema;
select * from key_column_usage where constraint_schema = 'insurance';*/
alter table customer add constraint fk1 foreign key (agent_id) references agent(Ssn);

alter table address add constraint fk2 foreign key(ssn) references agent(Ssn);

alter table cust_policy add constraint fk3 foreign key(Policy_num) references customer(Policy_num);

alter table Payment add constraint fk4 foreign key(Ssn) references customer(ssn);

alter table customer add constraint fk5 foreign key(claim_num) references claim(claim_id);

alter table cust_policy add constraint fk6 foreign key(policy_id) references policy(policy_id);

alter table Agnt_password add constraint fk7 foreign key(ssn) references agent(ssn);

alter table Cust_password add constraint fk8 foreign key(ssn) references customer(ssn);
