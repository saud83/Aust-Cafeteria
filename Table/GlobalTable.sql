CLEAR SCREEN;
drop table menu cascade constraints;
drop table customer cascade constraints;


CREATE TABLE customer(
customer_id int,
customer_name varchar2(20),
customer_type varchar2(20),
customer_userName varchar2(20),
customer_password varchar2(20),
PRIMARY KEY(customer_id)
);


CREATE TABLE menu(
menu_id int,
menu_name varchar2(20),
price number,
menu_type varchar(20),
PRIMARY KEY(menu_id)
);
commit;