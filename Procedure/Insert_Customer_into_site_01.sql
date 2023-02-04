SET SERVEROUTPUT ON;


CREATE OR REPLACE PROCEDURE AddCustomerInSite1(x in customer.customer_name%TYPE, y in customer.customer_userName%TYPE, z in customer.customer_password%TYPE)
IS
m1 NUMBER;
BEGIN
	select count(*) into m1 from customer1@asif;
	m1 := m1 + 1;
	INSERT INTO Customer1@asif(customer_id, customer_name, customer_type, customer_userName, customer_password) VALUES(m1, x, 'Student', y, z);
	commit;
END AddCustomerInSite1;
/