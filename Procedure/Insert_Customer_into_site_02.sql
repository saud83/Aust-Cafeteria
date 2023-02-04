SET SERVEROUTPUT ON;


CREATE OR REPLACE PROCEDURE AddCustomerInSite2(x in customer.customer_name%TYPE, y in customer.customer_userName%TYPE, z in customer.customer_password%TYPE)
IS
m2 NUMBER;
BEGIN
	select count(*) into m2 from customer2@ishan;
	m2 := m2 + 1;
	INSERT INTO Customer2@ishan(customer_id, customer_name, customer_type, customer_userName, customer_password) VALUES(m2, x, 'Teacher', y, z);
	COMMIT;
END AddCustomerInSite2;
/