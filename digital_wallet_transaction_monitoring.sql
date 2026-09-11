create database digitalwallet;
use digitalwallet;
create table wallet_users(
user_id int primary key,
user_name varchar(50),
mobile_no varchar(15) unique,
balance decimal(10,2) default 0
);


create table wallet(
wallet_id int primary key,
user_id int,
wallet_type varchar(20),
wallet_statuts varchar(20),
foreign key (user_id) references wallet_users(user_id)
);
create table wallet_transactions(
transaction_id int primary key,
wallet_id int,
transaction_type varchar(20),
amount decimal(10,2),
transcation_date date,
foreign key (wallet_id) references wallet(wallet_id)
);
DELIMITER //
CREATE TRIGGER transaction_amount
before INSERT ON wallet_transactions
for each row
Begin 
if NEW.amount <=0 then
signal sqlstate '45000'
set message_text = ' amount should be greter than zero';
end if;
end //
DELIMITER ;
insert into wallet_users values(1,'Rahul',9834569731,5000);
insert into wallet_users values(2,'Priya',9834569781,3500);
insert into wallet_users values(3,'Amit',9834569761,7200);

insert into wallet values(101,1,'personal','Active');
insert into wallet values(102,2,'personal','Active');
insert into wallet values(103,3,'business','Active');

insert into wallet_transactions values(1001,101,'Deposit',2000,'2026-09-01');
insert into wallet_transactions values(1002,101,'Payment',500,'2026-09-02');
insert into wallet_transactions values(1003,102,'Deposit',1500,'2026-09-03');
insert into wallet_transactions values(1004,102,'Payment',700,'2026-09-04');
insert into wallet_transactions values(1005,103,'Deposit',3000,'2026-09-05');
insert into wallet_transactions values(1006,101,'Payment',1200,'2026-09-06');

create index idx_user_name on wallet_users(user_name);
create index idx_wallet_user on wallet(user_id);
create index idx_transaction_wallet on wallet_transactions(wallet_id);
create index idx_transaction_date on wallet_transactions(transaction_date);

#display users
select *from wallet_users;

#users with balance > 4000
select *from wallet_users where balance>4000;

#user + wallet details details
select u.user_id,u.user_name,u.mobile_no, u.balance,w.wallet_id,w.wallet_type,w.wallet_status
from wallet_users u
join wallet w
on u.user_id = w.user_id;

# complete transaction report 
select t.transaction_id,u.user_name,w.wallet_id,w.wallet_type,t.transaction_type,t.amount,t.transaction_date
from wallet_transactions t
join wallet w
on t.wallet_id = w.wallet_id
join wallet_users u
on w.user_id = u.user_id
order by t.transaction_date;

# total,maximum,minimum,average transaction amount
select sum(amount) as total_transaction_amount,
max(amount) as maximum_amount,
min(amount) as minimum_amount,
round(avg(amount),2) as average_amount
from wallet_transactions;

#transaction type summary
select transaction_type, count(*) as transaction_count,
sum(amount) as total_amount from wallet_transactions
group by transaction_type;

#wallet-wise summary
select wallet_id, count(*) as transaction_count,
sum(amount) as total_amount from wallet_transactions
group by wallet_id
having sum(amount)>1000;

# date wise transactions
select *from wallet_transactions
where transaction_date>='2026-09-03';

# smart transaction classification case
select transaction_id,wallet_id,transaction_type,amount,
case
when amount >= 2500 then 'high value'
when amount >= 1000 then 'midimium value'
else 'low value'
end as transaction_category
from wallet_transactions;

#nested query
select user_id, user_name,balance
from wallet_user
where balance >(select avg(balance) from wallet_users);

#view: transaction mointoring
create view transaction_monitoring as
select t.transaction_id,u.user_name,w.wallet_id,w.wallet_type,t.transaction_type,t.amount,t.transaction_date,
case
when amount >= 2500 then 'high value'
when amount >= 1000 then 'midimium value'
else 'low value'
end as transaction_category,
case
when t.amount>=2500 then'review required'
else 'normal'
end as monitoring_status
from wallet_transactions t
join wallet w
on t.wallet_id = w.wallet_id
join wallet_users u
on w.user_id = u.user_id
order by t.transaction_date;

#display view 
select *from transaction_monitoring;